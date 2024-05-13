variable "url" {
  type = string
  default = getenv("ATLAS_DB_URL")
}

env "local_postgres" {
    src = "ent://ent/schema"
    dev = "docker://postgres/15/test?search_path=public"
    url = var.url
    migration {
        dir = "file://migrations/postgres"
        format = "atlas"
    }

    format {
        migrate {
        diff = "{{ sql . \"  \" }}"
        }
    }    
}

env "local_sqlite" {
    src = "ent://ent/schema"
    dev = "sqlite3://dev?mode=memory&_fk=1"
    url = var.url    
    migration {
        dir = "file://migrations/sqlite"
        format = "atlas"
    }

    format {
        migrate {
        diff = "{{ sql . \"  \" }}"
        }
    }    
}