import os
import fnmatch





# Function to find path of entity
def find_entity_path_from_name( line,verbname ):
    ennameFrom = line.split('ogit:from')[1].split(':')[-1].split(';')[0].strip()
    ennameFromParent = line.split('ogit:from')[1].split(':')[0].split('.')[-1].strip()

    filename = str(ennameFrom) + '.ttl'
    directory = os.path.normpath("./")
    for subdir, dirs, files in os.walk(directory):
        for file in files:

            if file == filename:

                if ennameFromParent.strip().lower() == 'ogit' and (subdir.split('/')[-2].strip().lower() =='ogit' or subdir.split('/')[-2].strip().lower()=='sgo'):
                    return os.path.join(subdir, file)
                elif ennameFromParent.lower() == subdir.split('/')[-2].strip().lower():
                    return os.path.join(subdir, file)
                #else:
                #    print os.path.join(ennameFromParent, file)
                #    print os.path.join(subdir, file)
                #elif ennameFromParent.lower() != subdir.split('/')[-2].strip().lower():
                #    print os.path.join(subdir, file)
                #    print subdir.split('/')[-2].strip().lower()
                #    print ennameFromParent.lower()
                #elif 'oslc-' in ennameFromParent.lower() and 'oslc-' in subdir.split('/')[-2].strip().lower():
                #    return os.path.join(subdir, file)
                #elif subdir.split('/')[-1].strip().lower() == 'survey':
                #    return os.path.join(subdir, file)



def remove_multiple_allowed(fpath,lines):
    f = open(os.path.join(fpath), "w")
    count = 0
    for line in lines:
        if ('ogit:allowed (' in line) and count == 0:
            count = count +1
        if ('ogit:allowed (' in line) and count > 0:
            continue

            # print line
        f.write(line)
    f.close()

# Function to remove embedded history
def remove_allowedFromVerb( fpath ):
    fverb = open(fpath, 'r')
    lines = fverb.readlines()
    fverb.close()
    f = open(os.path.join(fpath), "w")
    skip = False
    for line in lines:
        if ('ogit:allowed (' in line):
            skip = True
        if skip == True and ");" in line:
            skip = False
            continue

        if skip == False:
            f.write(line)

    f.close()

## function to write into file
#def write_verb_to_entity( entitypath, new_lines ):
    #with open(entitypath, "a") as myfile:
    #    if entitypath not in enlist:
            #for line in new_lines:
                #myfile.write(line)

        #enlist.append(entitypath)

# Function to find path of entity
def find_entity( fpath ):
    fverb = open(fpath, 'r')
    lines = fverb.readlines()
    fverb.close()
    al = False
    #enlist = []
    #new_lines = []


    for il, line in enumerate(lines):
        if ('ogit:Verb' in line):
            verbname = lines[il - 2]
        if ('ogit:allowed (' in line):
            al = True
        if al and 'ogit:from' in line:
            #ennameFrom=  line.split('ogit:from')[1].split(':')[-1].split(';')[0].strip()
            #ennameFromParent = line.split('ogit:from')[1].split(':')[0].split('ogit.')[0]
            ennameTo =  lines[il+1].split('ogit:to')[1].split(';')[0].strip()
            #t lines
            entitypath = find_entity_path_from_name(line,verbname)
            #if verbname.strip() == 'ogit.Forum:downloads':
            newlines= lines
            skip = False

            fr = open(os.path.join(entitypath), "r")
            entinty_lines= fr.readlines();
            fr.close();

            fw = open(os.path.join(entitypath), "w")
            for i, line_new in enumerate(newlines):
                if ('@prefix' in line_new) and (line_new not in entinty_lines):
                    fw.write(line_new)

            for i, ent_line in enumerate(entinty_lines):
                if ('ogit:allowed (' in ent_line):
                    fw.write(ent_line)
                    fw.write('\t\t\t[ '+ verbname.strip() +'  '+ ennameTo + ' ]\n')
                    continue
                fw.write(ent_line)

            fw.close()



def is_enfile(lines):
    for il, line in enumerate(lines):
        if ('a rdfs:Class;' in line) and ('Entity' in lines[il+1]):
            return True


def add_allowed(fpath,lines):
    if is_enfile(lines):
        fw = open(os.path.join(fpath), "w")
        lines.insert(len(lines)-1,'\togit:allowed (\n')
        lines.insert(len(lines)-1,'\t);\n')
        for i, lineW in enumerate(lines):

            #if ('.\n' == lineW):
            #    fw.write('\togit:allowed (\n')
            #    fw.write('\t);\n')
            fw.write(lineW)
    f.close()

if __name__ == '__main__':
    directory = os.path.normpath("./")
    for subdir, dirs, files in os.walk(directory):
       for file in files:
           if file.endswith(".ttl") and file !="ogit.ttl":
               fpath = os.path.join(subdir, file)
               f = open(fpath, 'r')
               lines = f.readlines()
               f.close()

               # remove remove_multiple_alloed
               add_allowed(fpath,lines)

    for subdir, dirs, files in os.walk(directory):
        if subdir.split('/')[-1] == "verbs":
           for file in files:
               fpath = os.path.join(subdir, file)

               entitylist  = find_entity(fpath)
               remove_allowedFromVerb(fpath)









