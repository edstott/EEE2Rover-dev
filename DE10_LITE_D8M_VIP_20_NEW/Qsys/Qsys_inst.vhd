	component Qsys is
		port (
			altpll_0_areset_conduit_export                  : in    std_logic                     := 'X';             -- export
			altpll_0_locked_conduit_export                  : out   std_logic;                                        -- export
			clk_clk                                         : in    std_logic                     := 'X';             -- clk
			clk_sdram_clk                                   : out   std_logic;                                        -- clk
			d8m_xclkin_clk                                  : out   std_logic;                                        -- clk
			i2c_opencores_camera_export_scl_pad_io          : inout std_logic                     := 'X';             -- scl_pad_io
			i2c_opencores_camera_export_sda_pad_io          : inout std_logic                     := 'X';             -- sda_pad_io
			i2c_opencores_mipi_export_scl_pad_io            : inout std_logic                     := 'X';             -- scl_pad_io
			i2c_opencores_mipi_export_sda_pad_io            : inout std_logic                     := 'X';             -- sda_pad_io
			key_external_connection_export                  : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			led_external_connection_export                  : out   std_logic_vector(9 downto 0);                     -- export
			mipi_pwdn_n_external_connection_export          : out   std_logic;                                        -- export
			mipi_reset_n_external_connection_export         : out   std_logic;                                        -- export
			new_sdram_controller_0_wire_addr                : out   std_logic_vector(12 downto 0);                    -- addr
			new_sdram_controller_0_wire_ba                  : out   std_logic_vector(1 downto 0);                     -- ba
			new_sdram_controller_0_wire_cas_n               : out   std_logic;                                        -- cas_n
			new_sdram_controller_0_wire_cke                 : out   std_logic;                                        -- cke
			new_sdram_controller_0_wire_cs_n                : out   std_logic;                                        -- cs_n
			new_sdram_controller_0_wire_dq                  : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			new_sdram_controller_0_wire_dqm                 : out   std_logic_vector(1 downto 0);                     -- dqm
			new_sdram_controller_0_wire_ras_n               : out   std_logic;                                        -- ras_n
			new_sdram_controller_0_wire_we_n                : out   std_logic;                                        -- we_n
			reset_reset_n                                   : in    std_logic                     := 'X';             -- reset_n
			sw_external_connection_export                   : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			terasic_auto_focus_0_conduit_vcm_i2c_sda        : inout std_logic                     := 'X';             -- vcm_i2c_sda
			terasic_auto_focus_0_conduit_clk50              : in    std_logic                     := 'X';             -- clk50
			terasic_auto_focus_0_conduit_vcm_i2c_scl        : inout std_logic                     := 'X';             -- vcm_i2c_scl
			terasic_camera_0_conduit_end_D                  : in    std_logic_vector(11 downto 0) := (others => 'X'); -- D
			terasic_camera_0_conduit_end_FVAL               : in    std_logic                     := 'X';             -- FVAL
			terasic_camera_0_conduit_end_LVAL               : in    std_logic                     := 'X';             -- LVAL
			terasic_camera_0_conduit_end_PIXCLK             : in    std_logic                     := 'X';             -- PIXCLK
			video_vga_controller_0_external_interface_CLK   : out   std_logic;                                        -- CLK
			video_vga_controller_0_external_interface_HS    : out   std_logic;                                        -- HS
			video_vga_controller_0_external_interface_VS    : out   std_logic;                                        -- VS
			video_vga_controller_0_external_interface_BLANK : out   std_logic;                                        -- BLANK
			video_vga_controller_0_external_interface_SYNC  : out   std_logic;                                        -- SYNC
			video_vga_controller_0_external_interface_R     : out   std_logic_vector(3 downto 0);                     -- R
			video_vga_controller_0_external_interface_G     : out   std_logic_vector(3 downto 0);                     -- G
			video_vga_controller_0_external_interface_B     : out   std_logic_vector(3 downto 0)                      -- B
		);
	end component Qsys;

	u0 : component Qsys
		port map (
			altpll_0_areset_conduit_export                  => CONNECTED_TO_altpll_0_areset_conduit_export,                  --                   altpll_0_areset_conduit.export
			altpll_0_locked_conduit_export                  => CONNECTED_TO_altpll_0_locked_conduit_export,                  --                   altpll_0_locked_conduit.export
			clk_clk                                         => CONNECTED_TO_clk_clk,                                         --                                       clk.clk
			clk_sdram_clk                                   => CONNECTED_TO_clk_sdram_clk,                                   --                                 clk_sdram.clk
			d8m_xclkin_clk                                  => CONNECTED_TO_d8m_xclkin_clk,                                  --                                d8m_xclkin.clk
			i2c_opencores_camera_export_scl_pad_io          => CONNECTED_TO_i2c_opencores_camera_export_scl_pad_io,          --               i2c_opencores_camera_export.scl_pad_io
			i2c_opencores_camera_export_sda_pad_io          => CONNECTED_TO_i2c_opencores_camera_export_sda_pad_io,          --                                          .sda_pad_io
			i2c_opencores_mipi_export_scl_pad_io            => CONNECTED_TO_i2c_opencores_mipi_export_scl_pad_io,            --                 i2c_opencores_mipi_export.scl_pad_io
			i2c_opencores_mipi_export_sda_pad_io            => CONNECTED_TO_i2c_opencores_mipi_export_sda_pad_io,            --                                          .sda_pad_io
			key_external_connection_export                  => CONNECTED_TO_key_external_connection_export,                  --                   key_external_connection.export
			led_external_connection_export                  => CONNECTED_TO_led_external_connection_export,                  --                   led_external_connection.export
			mipi_pwdn_n_external_connection_export          => CONNECTED_TO_mipi_pwdn_n_external_connection_export,          --           mipi_pwdn_n_external_connection.export
			mipi_reset_n_external_connection_export         => CONNECTED_TO_mipi_reset_n_external_connection_export,         --          mipi_reset_n_external_connection.export
			new_sdram_controller_0_wire_addr                => CONNECTED_TO_new_sdram_controller_0_wire_addr,                --               new_sdram_controller_0_wire.addr
			new_sdram_controller_0_wire_ba                  => CONNECTED_TO_new_sdram_controller_0_wire_ba,                  --                                          .ba
			new_sdram_controller_0_wire_cas_n               => CONNECTED_TO_new_sdram_controller_0_wire_cas_n,               --                                          .cas_n
			new_sdram_controller_0_wire_cke                 => CONNECTED_TO_new_sdram_controller_0_wire_cke,                 --                                          .cke
			new_sdram_controller_0_wire_cs_n                => CONNECTED_TO_new_sdram_controller_0_wire_cs_n,                --                                          .cs_n
			new_sdram_controller_0_wire_dq                  => CONNECTED_TO_new_sdram_controller_0_wire_dq,                  --                                          .dq
			new_sdram_controller_0_wire_dqm                 => CONNECTED_TO_new_sdram_controller_0_wire_dqm,                 --                                          .dqm
			new_sdram_controller_0_wire_ras_n               => CONNECTED_TO_new_sdram_controller_0_wire_ras_n,               --                                          .ras_n
			new_sdram_controller_0_wire_we_n                => CONNECTED_TO_new_sdram_controller_0_wire_we_n,                --                                          .we_n
			reset_reset_n                                   => CONNECTED_TO_reset_reset_n,                                   --                                     reset.reset_n
			sw_external_connection_export                   => CONNECTED_TO_sw_external_connection_export,                   --                    sw_external_connection.export
			terasic_auto_focus_0_conduit_vcm_i2c_sda        => CONNECTED_TO_terasic_auto_focus_0_conduit_vcm_i2c_sda,        --              terasic_auto_focus_0_conduit.vcm_i2c_sda
			terasic_auto_focus_0_conduit_clk50              => CONNECTED_TO_terasic_auto_focus_0_conduit_clk50,              --                                          .clk50
			terasic_auto_focus_0_conduit_vcm_i2c_scl        => CONNECTED_TO_terasic_auto_focus_0_conduit_vcm_i2c_scl,        --                                          .vcm_i2c_scl
			terasic_camera_0_conduit_end_D                  => CONNECTED_TO_terasic_camera_0_conduit_end_D,                  --              terasic_camera_0_conduit_end.D
			terasic_camera_0_conduit_end_FVAL               => CONNECTED_TO_terasic_camera_0_conduit_end_FVAL,               --                                          .FVAL
			terasic_camera_0_conduit_end_LVAL               => CONNECTED_TO_terasic_camera_0_conduit_end_LVAL,               --                                          .LVAL
			terasic_camera_0_conduit_end_PIXCLK             => CONNECTED_TO_terasic_camera_0_conduit_end_PIXCLK,             --                                          .PIXCLK
			video_vga_controller_0_external_interface_CLK   => CONNECTED_TO_video_vga_controller_0_external_interface_CLK,   -- video_vga_controller_0_external_interface.CLK
			video_vga_controller_0_external_interface_HS    => CONNECTED_TO_video_vga_controller_0_external_interface_HS,    --                                          .HS
			video_vga_controller_0_external_interface_VS    => CONNECTED_TO_video_vga_controller_0_external_interface_VS,    --                                          .VS
			video_vga_controller_0_external_interface_BLANK => CONNECTED_TO_video_vga_controller_0_external_interface_BLANK, --                                          .BLANK
			video_vga_controller_0_external_interface_SYNC  => CONNECTED_TO_video_vga_controller_0_external_interface_SYNC,  --                                          .SYNC
			video_vga_controller_0_external_interface_R     => CONNECTED_TO_video_vga_controller_0_external_interface_R,     --                                          .R
			video_vga_controller_0_external_interface_G     => CONNECTED_TO_video_vga_controller_0_external_interface_G,     --                                          .G
			video_vga_controller_0_external_interface_B     => CONNECTED_TO_video_vga_controller_0_external_interface_B      --                                          .B
		);

