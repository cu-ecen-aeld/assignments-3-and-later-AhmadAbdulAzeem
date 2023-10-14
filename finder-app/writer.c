#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[])
{   
    // full path
    char *writefile = argv[1];
    char *writestr = argv[2];

    FILE *file;

    openlog(NULL, 0, LOG_USER);

    // Exits with value 1 error and print statements if any of the arguments above were not specified
    if(argc != 3)
    {
        printf("Error: PLease specify writefile and writestr command line arguments\n");
        syslog(LOG_ERR, "Error: PLease specify writefile and writestr command line arguments");
        return 1;
    }

    file = fopen(writefile, "w");
    if(file == NULL)
    {
        printf("unable to open the file\n");
        syslog(LOG_ERR, "unable to open the file");
        return 1;
    }

    // write the content
    fprintf(file, "%s", writestr);

    syslog(LOG_DEBUG, "Writing %s to %s", writestr, writefile);

    fclose(file);
    return 0;
}