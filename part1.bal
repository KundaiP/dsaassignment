type HoD {
    id: ID!
    name: String!
    departments: [Department]
    employees: [Employee]
}

type Supervisor {
    id: ID!
    name: String!
    employees: [Employee]
}

type Employee {
    id: ID!
    name: String!
    department: Department
    supervisor: Supervisor
    kpis: [KPI]
    scores: [Score]
}

type Department {
    id: ID!
    name: String!
    objectives: [Objective]
    employees: [Employee]
}

type KPI {
    id: ID!
    name: String!
    metric: String
    value: Float
}

type Score {
    id: ID!
    score: Float
    employee: Employee
}

type Objective {
    id: ID!
    name: String!
    percentage: Float
}

type Query {
    hod(id: ID!): HoD
    supervisor(id: ID!): Supervisor
    employee(id: ID!): Employee
}

type Mutation {
    createDepartmentObjective(departmentId: ID!, name: String!, percentage: Float): Objective
    deleteDepartmentObjective(objectiveId: ID!): Boolean
    assignEmployeeToSupervisor(employeeId: ID!, supervisorId: ID!): Boolean
    createKPI(employeeId: ID!, name: String!, metric: String, value: Float): KPI
    gradeKPI(kpiId: ID!, score: Float): Boolean
}
