library verilog;
use verilog.vl_types.all;
entity johnson_8bit is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0)
    );
end johnson_8bit;
