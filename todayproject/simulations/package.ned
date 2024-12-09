package ethnet.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import ned.IdealChannel;


@license(LGPL);
//
// TODO documentation
//
network Ethnet
{
    @display("bgb=422,409");
    submodules:
        server: StandardHost {
            @display("p=34,183");
        }
        client: StandardHost {
            @display("p=322,115");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=200,57");
        }
        client1: StandardHost {
            @display("p=322,199");
        }
        client2: StandardHost {
            @display("p=328,287");
        }
        client3: StandardHost {
            @display("p=216,330");
        }
        client4: StandardHost {
            @display("p=43,342");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client.ethg++;
        server.ethg++ <--> Eth100M <--> client1.ethg++;
        server.ethg++ <--> Eth100M <--> client2.ethg++;
        server.ethg++ <--> Eth100M <--> client3.ethg++;
        server.ethg++ <--> Eth100M <--> client4.ethg++;
}
