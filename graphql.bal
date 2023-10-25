import ballerina/graphql;

public type HoD {
    public string id;
    public string name;

};

public type Supervisor {
    public string id;
    public string name;
}
;
public type Employee {
    public string id;
    public string name;
}

public type Department {
    public string id;
    public string name;
}

public type KPI {
    public string id;
    public string name;
}

public type Score {
    public string id;
    public Float score;
}

public type Objective {
    public string id;
    public string name;
}


public object performaceManagementService {
    public HoD getHoD(string id) returns error? {
        // Implement the logic to get HoD data
    }

    public Supervisor getSupervisor(string id) returns error? {
        // Implement the logic to get Supervisor data
    }

    // Implement other queries and mutations as defined in the schema
}

public function main() {
    graphql:ServiceConfig serviceConfig = {
        basePath: "/graphql",
        service: performaceManagementService
    };

    graphql:Service graphqlService = new(serviceConfig);
    check graphqlService.start();
}

