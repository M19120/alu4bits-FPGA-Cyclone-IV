library verilog;
use verilog.vl_types.all;
entity alu_4bits_vlg_check_tst is
    port(
        y               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end alu_4bits_vlg_check_tst;
