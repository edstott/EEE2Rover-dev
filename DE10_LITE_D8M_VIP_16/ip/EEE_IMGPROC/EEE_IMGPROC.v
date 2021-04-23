module EEE_IMGPROC(
	// global clock & reset
	clk,
	reset_n,
	
	// mm slave
	s_chipselect,
	s_read,
	s_write,
	s_readdata,
	s_writedata,
	s_address,

	// stream sink
	sink_data,
	sink_valid,
	sink_ready,
	sink_sop,
	sink_eop,
	
	// streaming source
	source_data,
	source_valid,
	source_ready,
	source_sop,
	source_eop,
	
	// conduit
	mode
	
);


// global clock & reset
input	clk;
input	reset_n;

// mm slave
input							s_chipselect;
input							s_read;
input							s_write;
output	reg	[31:0]	s_readdata;
input	[31:0]				s_writedata;
input	[2:0]					s_address;


// streaming sink
input	[23:0]            	sink_data;
input								sink_valid;
output							sink_ready;
input								sink_sop;
input								sink_eop;

// streaming source
output	[23:0]			  	   source_data;
output								source_valid;
input									source_ready;
output								source_sop;
output								source_eop;

// conduit export
input                         mode;

////////////////////////////////////////////////////////////////////////
//
reg  [7:0]   reg_status;
////////////////////////////////////////////////////////////////////////

// Detect red areas
wire red_detect;
assign red_detect = sink_data[23] & ~sink_data[15] & ~sink_data[7];

// Highlight detected areas
wire [23:0] source_data_red_det;
assign source_data_red_det  =  red_detect ? {8'hff, 8'h0, 8'h0} : {sink_data[15:8], sink_data[15:8], sink_data[15:8]};

// Switch output pixels depending on mode
// Always pass through the start-of-packet word unchanged
assign source_data = (mode & ~sink_sop) ? source_data_red_det : sink_data;

// connnect sink & source direct
assign source_valid =  sink_valid;
assign sink_ready   =  source_ready; 
assign source_sop   =  sink_sop;
assign source_eop   =  sink_eop;



/////////////////////////////////
/// command from mm master  /////
/////////////////////////////////

// write
`define REG_STATUS    			0

// read
`define REG_STATUS         0


// mm mater write
always @ (posedge clk)
begin
	if (~reset_n)
	begin
		reg_status = 8'b0;
	end
	else begin
		if(s_chipselect & s_write) begin
		   if      (s_address == `REG_STATUS)	reg_status <= s_writedata[7:0];
		end
	end
end



// mm mater read
always @ (posedge clk)
begin
   if (~reset_n) 
	   s_readdata <= {16'b0,1'b1,15'b0};
	else if (s_chipselect & s_read)
	begin
		if   (s_address == `REG_STATUS) s_readdata <= {24'b0,reg_status};
	end
end
						


endmodule

