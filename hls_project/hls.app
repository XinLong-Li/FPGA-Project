<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="hls_project" top="ORB_accel">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="../../src/testbench.cpp" sc="0" tb="1" cflags=" -I../../vitis_library_vision_L1/include -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../src/stb_image.h" sc="0" tb="1" cflags=" -I../../vitis_library_vision_L1/include -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tests/test.png" sc="0" tb="1" cflags=" -I../../vitis_library_vision_L1/include -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="src/ORB.cpp" sc="0" tb="false" cflags="-Ivitis_library_vision_L1/include" csimflags="" blackbox="false"/>
        <file name="src/fast.hpp" sc="0" tb="false" cflags="-Ivitis_library_vision_L1/include" csimflags="" blackbox="false"/>
        <file name="src/ORB.h" sc="0" tb="false" cflags="-Ivitis_library_vision_L1/include" csimflags="" blackbox="false"/>
        <file name="src/pattern.h" sc="0" tb="false" cflags="-Ivitis_library_vision_L1/include" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

