import os


def getFileName(fpath, name_list, suffix=None, is_all=False):
    """
    :param fpath:
    :param name_list:
    :param suffix: file suffix
    :param is_all:
    :return: files_path_list
    """

    if suffix is None:
        suffix = ['.c']
    files_path_list = []
    if is_all:
        for root, dirs, files in os.walk(fpath):
            for file in files:
                if os.path.splitext(file)[1] in suffix:
                    files_path_list.append(os.path.join(root, file))
                    name_list.append(file)
    else:
        for file in os.listdir(fpath):
            if os.path.splitext(file)[1] in suffix:
                name_list.append(file)
    return files_path_list


if __name__ == "__main__":
    scriptDir = os.path.dirname(os.path.realpath(__file__))  # 给出脚本的路径
    os.chdir(scriptDir)  # 切换工作目录到脚本目录

    files_name_list = []
    getFileName("./", files_name_list)

    print(files_name_list)
    for file in files_name_list:
        os.system("gcc -E " + file + " -o " + file.replace("c", "i"))
        os.system("gcc -S " + file.replace("c", "i") + " -o " + file.replace("c", "s"))
        os.system("gcc -c " + file.replace("c", "s") + " -o " + file.replace("c", "o"))
        os.system("gcc " + file.replace("c", "o") + " -o " + file.replace("c", "exe"))
