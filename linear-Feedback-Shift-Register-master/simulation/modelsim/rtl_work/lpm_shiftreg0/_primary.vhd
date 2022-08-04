library verilog;
use verilog.vl_types.all;
entity lpm_shiftreg0 is
    port(
        clock           : in     vl_logic;
        sclr            : in     vl_logic;
        shiftin         : in     vl_logic;
        q               : out    vl_logic_vector(15 downto 0)
    );
end lpm_shiftreg0;
