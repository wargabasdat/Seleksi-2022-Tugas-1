import json


def create_script(k, es: list):
    scr = "insert into {} ".format(k)
    scr += ("({}) \n".format(",".join(es[0].keys())))
    scr += ("values\n")
    for i,e in enumerate(es):
        scr += ("({})".format(",".join(["\"{}\"".format(str(ek[1])) for ek in e.items()])))
        if i == len(es) -1:
            scr += (";\n")
        else:
            scr += ",\n"
    return scr

script = ""
with open("../data/data_based_on_ER_model.json",'r',encoding='utf-8') as f:
    entities = json.load(f)

    for k in entities:
        script += (create_script(k,entities[k]))

    print(script)

    with open("../../Data Storing/script/insert.sql", 'w') as fj:
        fj.write(script)
    #
    # print(entities)


