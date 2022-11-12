import sys

def main():
    print("len =", len(sys.argv))

    with open("index.html", "w") as ouf:
        print("<HTML><HEAD><TITLE>Hello, World!</TITLE></HEAD><BODY><CENTER>", file=ouf)

        if (len(sys.argv) > 1):
            for _ in range(1, len(sys.argv)):
                print("<H1 align=center>Hello, ", sys.argv[_], "!</H1>", file=ouf)
        else:
            print("<H1 align=center>Hello, whoever you are", "!</H1>", file=ouf)

        print("<img src=\"ironman.jpg\">", file=ouf)
        print("</CENTER></BODY></HTML>", file=ouf)


if (__name__ == "__main__"):
    main()
