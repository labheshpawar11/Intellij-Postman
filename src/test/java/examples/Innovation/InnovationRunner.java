package examples.Innovation;

import com.intuit.karate.junit5.Karate;

class InnovationRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("getRequest").relativeTo(getClass());
    }    

}
