workspace "Learn Architecture as Code" {

    !docs docs
    !adrs decisions

    model {
        user = person "User"
        system = softwareSystem "MySystem" {
            webapp = container "Web App" {
                technology "React"
                description "Frontend"
            }
            container "API" {
                technology "Node.js"
                description "Business logic"
            }
        }
        user -> webapp "Uses"
    }

    views {
        systemContext system {
            include *
            autolayout lr
        }

        container system {
            include *
            autolayout lr
        }

        // branding {
        //     logo "https://www.simelabs.com/wp-content/themes/simelabs/images/simelabs-logo1.png"
        // }

        styles {
            element "Container" {
                background "#008080"
                color "#ffffff"
            }
            element "Software System" {
                background "#008080"
                color "#ffffff"
            }
            // Add more element types as needed
        }
        theme default
    }
}
