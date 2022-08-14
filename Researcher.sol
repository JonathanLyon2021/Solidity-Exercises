struct Researcher {
        
    uint age;
    string first_name;
    string last_name;
    address researcher_address;
    
        // List of academic articles published by the Researcher
        string[] academic_papers;

    // List of researchers that can peer-review the Researcher's
            // academic articles before publishing
         Researcher[] peer_reviewers;
}
