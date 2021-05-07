package com.vmware.mainframeconnect;

import org.junit.ClassRule;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.testcontainers.containers.Db2Container;

@SpringBootTest
@ExtendWith(SpringExtension.class)
public class MainframeConnectControllerTest {

    @ClassRule
    public Db2Container db2 = new Db2Container()
            .acceptLicense();


    @Test
    void testCtx() {

    }
}
