# 1 "./heuristic-guide.cil.c"
# 1 "/mnt/c/Dropbox/classes/CS492A-Fall18/3-crown/code-examples/examples//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./heuristic-guide.cil.c"
# 6 "heuristic-guide.c"
void __globinit_heuristic_guide(void) ;
extern void __CrownInit(int id ) __attribute__((__crown_skip__)) ;
extern void __CrownCheckSymbolic(int id , char *fname ) __attribute__((__crown_skip__)) ;
extern void __CrownEnableSymbolic(int id , char *fname ) __attribute__((__crown_skip__)) ;
extern void __CrownSetCallerCalleeName(int id , char *fname , char *fname2 ) __attribute__((__crown_skip__)) ;
extern void __CrownHandleReturn(int id , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
extern void __CrownReturn(int id ) __attribute__((__crown_skip__)) ;
extern void __CrownCall(int id , unsigned int fid ) __attribute__((__crown_skip__)) ;
extern void __CrownBranch(int id , int bid , unsigned char b , int line , char *fname ) __attribute__((__crown_skip__)) ;
extern void __CrownApply2(int id , int op , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
extern void __CrownApply1(int id , int op , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
extern void __CrownClearStack(int id ) __attribute__((__crown_skip__)) ;
extern void __CrownStore(int id , unsigned long addr ) __attribute__((__crown_skip__)) ;
extern void __CrownLoad(int id , unsigned long addr , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
# 216 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
typedef unsigned long size_t;
# 131 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off_t;
# 132 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off64_t;
# 44 "/usr/include/stdio.h"
struct _IO_FILE;
# 44 "/usr/include/stdio.h"
struct _IO_FILE;
# 48 "/usr/include/stdio.h"
typedef struct _IO_FILE FILE;
# 144 "/usr/include/libio.h"
struct _IO_FILE;
# 150 "/usr/include/libio.h"
typedef void _IO_lock_t;
# 156 "/usr/include/libio.h"
struct _IO_marker {
   struct _IO_marker *_next ;
   struct _IO_FILE *_sbuf ;
   int _pos ;
};
# 241 "/usr/include/libio.h"
struct _IO_FILE {
   int _flags ;
   char *_IO_read_ptr ;
   char *_IO_read_end ;
   char *_IO_read_base ;
   char *_IO_write_base ;
   char *_IO_write_ptr ;
   char *_IO_write_end ;
   char *_IO_buf_base ;
   char *_IO_buf_end ;
   char *_IO_save_base ;
   char *_IO_backup_base ;
   char *_IO_save_end ;
   struct _IO_marker *_markers ;
   struct _IO_FILE *_chain ;
   int _fileno ;
   int _flags2 ;
   __off_t _old_offset ;
   unsigned short _cur_column ;
   signed char _vtable_offset ;
   char _shortbuf[1] ;
   _IO_lock_t *_lock ;
   __off64_t _offset ;
   void *__pad1 ;
   void *__pad2 ;
   void *__pad3 ;
   void *__pad4 ;
   size_t __pad5 ;
   int _mode ;
   char _unused2[(15UL * sizeof(int ) - 4UL * sizeof(void *)) - sizeof(size_t )] ;
};
# 543 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) exit)(int __status ) ;
# 170 "/usr/include/stdio.h"
extern struct _IO_FILE *stderr ;
# 237 "/usr/include/stdio.h"
extern int fclose(FILE *__stream ) ;
# 272 "/usr/include/stdio.h"
extern FILE *fopen(char const * __restrict __filename , char const * __restrict __modes ) ;
# 356 "/usr/include/stdio.h"
extern int fprintf(FILE * __restrict __stream , char const * __restrict __format
                   , ...) ;
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 376 "/mnt/d/ubuntu/CROWN-sym_assume/bin/../include/crown.h"
extern void __CrownInt(int *x , int cnt_sym_var , int ln , char *fname , ...) __attribute__((__crown_skip__)) ;
# 10 "heuristic-guide.c"
int main(void) ;
# 10 "heuristic-guide.c"
static int cnt_symbolic_var = 1;
# 6 "heuristic-guide.c"
int main(void)
{
  int x ;
  int array[4] ;
  FILE *f ;
  FILE *tmp ;
  int __retres5 ;

  {
  __globinit_heuristic_guide();
  __CrownCheckSymbolic(3, "main");
  __CrownCall(2, 1);
  __CrownClearStack(1);
# 10 "heuristic-guide.c"
  __CrownInt(& x, cnt_symbolic_var, 10, (char *)"heuristic-guide.c", "x");
  __CrownLoad(6, (unsigned long )(& cnt_symbolic_var), 5, (long long )cnt_symbolic_var,
              (double )cnt_symbolic_var);
  __CrownLoad(5, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownApply2(4, 0, 5, (long long )(cnt_symbolic_var + 1), (double )(cnt_symbolic_var + 1));
  __CrownStore(7, (unsigned long )(& cnt_symbolic_var));
# 10 "heuristic-guide.c"
  cnt_symbolic_var ++;
# 11 "heuristic-guide.c"
  while (1) {
    while_continue: ;
    {
    __CrownLoad(10, (unsigned long )0, 5, (long long )0, (double )0);
    __CrownLoad(9, (unsigned long )(& x), 5, (long long )x, (double )x);
    __CrownApply2(8, 20, 5, (long long )(0 < x), (double )(0 < x));
# 11 "heuristic-guide.c"
    if (0 < x) {
      __CrownBranch(11, 6, 1, 12, "heuristic-guide.c");
      {
      __CrownLoad(15, (unsigned long )(& x), 5, (long long )x, (double )x);
      __CrownLoad(14, (unsigned long )0, 5, (long long )4, (double )4);
      __CrownApply2(13, 18, 5, (long long )(x <= 4), (double )(x <= 4));
# 11 "heuristic-guide.c"
      if (x <= 4) {
        __CrownBranch(16, 7, 1, 12, "heuristic-guide.c");

      }
# 11 "heuristic-guide.c"
        else {
        __CrownBranch(17, 8, 0, 12, "heuristic-guide.c");
# 11 "heuristic-guide.c"
        goto _L;
      }
      }
    }
# 11 "heuristic-guide.c"
      else {
      __CrownBranch(12, 9, 0, 12, "heuristic-guide.c");
      _L:
      __CrownLoad(19, (unsigned long )(& stderr), 6, (long long )stderr, 8);
      __CrownApply1(18, 27, 6, (long long )((FILE * __restrict )stderr), 8);
      __CrownLoad(20, (unsigned long )0, 6, (long long )((char const * __restrict )"### SYM_assume(%s) is violated at Line %d (%s in %s) ###\n"),
                  8);
      __CrownLoad(21, (unsigned long )0, 6, (long long )"0< x && x <=4", 8);
      __CrownLoad(22, (unsigned long )0, 5, (long long )11, (double )11);
      __CrownLoad(23, (unsigned long )0, 6, (long long )"main", 8);
      __CrownLoad(24, (unsigned long )0, 6, (long long )"heuristic-guide.c", 8);
      __CrownSetCallerCalleeName(25, "main", "fprintf");
# 11 "heuristic-guide.c"
      fprintf((FILE * __restrict )stderr, (char const * __restrict )"### SYM_assume(%s) is violated at Line %d (%s in %s) ###\n",
              "0< x && x <=4", 11, "main", "heuristic-guide.c");
      __CrownEnableSymbolic(27, "main");
      __CrownClearStack(26);
      __CrownLoad(28, (unsigned long )0, 6, (long long )((char const * __restrict )"__SYM_assume_violated"),
                  8);
      __CrownLoad(29, (unsigned long )0, 6, (long long )((char const * __restrict )"w"),
                  8);
      __CrownSetCallerCalleeName(30, "main", "fopen");
# 11 "heuristic-guide.c"
      tmp = fopen((char const * __restrict )"__SYM_assume_violated", (char const * __restrict )"w");
      __CrownEnableSymbolic(33, "main");
      __CrownHandleReturn(32, 6, (long long )tmp, 8);
      __CrownStore(31, (unsigned long )(& tmp));
      __CrownLoad(34, (unsigned long )(& tmp), 6, (long long )tmp, 8);
      __CrownStore(35, (unsigned long )(& f));
# 11 "heuristic-guide.c"
      f = tmp;
      {
      __CrownLoad(37, (unsigned long )(& f), 6, (long long )f, 8);
      __CrownApply1(36, 26, 5, (long long )(! f), (double )(! f));
# 11 "heuristic-guide.c"
      if (! f) {
        __CrownBranch(38, 11, 1, 12, "heuristic-guide.c");
        __CrownLoad(41, (unsigned long )(& stderr), 6, (long long )stderr, 8);
        __CrownApply1(40, 27, 6, (long long )((FILE * __restrict )stderr), 8);
        __CrownLoad(42, (unsigned long )0, 6, (long long )((char const * __restrict )"### %s file cannot be created ###\n"),
                    8);
        __CrownLoad(43, (unsigned long )0, 6, (long long )"__SYM_assume_violated",
                    8);
        __CrownSetCallerCalleeName(44, "main", "fprintf");
# 11 "heuristic-guide.c"
        fprintf((FILE * __restrict )stderr, (char const * __restrict )"### %s file cannot be created ###\n",
                "__SYM_assume_violated");
        __CrownEnableSymbolic(46, "main");
        __CrownClearStack(45);
      }
# 11 "heuristic-guide.c"
        else {
        __CrownBranch(39, 12, 0, 12, "heuristic-guide.c");
        __CrownLoad(47, (unsigned long )(& f), 6, (long long )f, 8);
        __CrownSetCallerCalleeName(48, "main", "fclose");
# 11 "heuristic-guide.c"
        fclose(f);
        __CrownEnableSymbolic(50, "main");
        __CrownClearStack(49);
      }
      }
      __CrownLoad(51, (unsigned long )0, 5, (long long )1, (double )1);
      __CrownSetCallerCalleeName(52, "main", "exit");
# 11 "heuristic-guide.c"
      exit(1);
      __CrownEnableSymbolic(54, "main");
      __CrownClearStack(53);
    }
    }
# 11 "heuristic-guide.c"
    goto while_break;
  }
  while_break:
  __CrownLoad(55, (unsigned long )0, 6, (long long )((char const * __restrict )"x = %d\n"),
              8);
  __CrownLoad(56, (unsigned long )(& x), 5, (long long )x, (double )x);
  __CrownSetCallerCalleeName(57, "main", "printf");
# 13 "heuristic-guide.c"
  printf((char const * __restrict )"x = %d\n", x);
  __CrownEnableSymbolic(59, "main");
  __CrownClearStack(58);
  __CrownLoad(60, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(61, (unsigned long )(& array[0]));
# 14 "heuristic-guide.c"
  array[0] = 0;
  __CrownLoad(62, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownStore(63, (unsigned long )(& array[1]));
# 15 "heuristic-guide.c"
  array[1] = 1;
  __CrownLoad(64, (unsigned long )(& x), 5, (long long )x, (double )x);
  __CrownStore(65, (unsigned long )(& array[2]));
# 16 "heuristic-guide.c"
  array[2] = x;
  __CrownLoad(66, (unsigned long )0, 5, (long long )4, (double )4);
  __CrownStore(67, (unsigned long )(& array[3]));
# 17 "heuristic-guide.c"
  array[3] = 4;
  __CrownLoad(70, (unsigned long )(& x), 5, (long long )x, (double )x);
  __CrownLoad(69, (unsigned long )0, 5, (long long )3, (double )3);
  __CrownApply2(68, 13, 5, (long long )(x == 3), (double )(x == 3));
# 18 "heuristic-guide.c"
  if (x == 3) {
    __CrownBranch(71, 18, 1, 19, "heuristic-guide.c");
    __CrownLoad(73, (unsigned long )0, 6, (long long )((char const * __restrict )"Guiding x to become 3\n"),
                8);
    __CrownSetCallerCalleeName(74, "main", "printf");
# 18 "heuristic-guide.c"
    printf((char const * __restrict )"Guiding x to become 3\n");
    __CrownEnableSymbolic(76, "main");
    __CrownClearStack(75);
  }
# 18 "heuristic-guide.c"
    else {
    __CrownBranch(72, 19, 0, 19, "heuristic-guide.c");

  }
  __CrownLoad(79, (unsigned long )(& array[x - 1]), 5, (long long )array[x - 1], (double )array[x - 1]);
  __CrownLoad(78, (unsigned long )0, 5, (long long )3, (double )3);
  __CrownApply2(77, 13, 5, (long long )(array[x - 1] == 3), (double )(array[x - 1] == 3));
# 19 "heuristic-guide.c"
  if (array[x - 1] == 3) {
    __CrownBranch(80, 21, 1, 20, "heuristic-guide.c");
    __CrownLoad(82, (unsigned long )0, 6, (long long )((char const * __restrict )"ERROR\n"),
                8);
    __CrownSetCallerCalleeName(83, "main", "printf");
# 19 "heuristic-guide.c"
    printf((char const * __restrict )"ERROR\n");
    __CrownEnableSymbolic(85, "main");
    __CrownClearStack(84);
  }
# 19 "heuristic-guide.c"
    else {
    __CrownBranch(81, 22, 0, 20, "heuristic-guide.c");
    __CrownLoad(86, (unsigned long )0, 6, (long long )((char const * __restrict )"Fine\n"),
                8);
    __CrownSetCallerCalleeName(87, "main", "printf");
# 20 "heuristic-guide.c"
    printf((char const * __restrict )"Fine\n");
    __CrownEnableSymbolic(89, "main");
    __CrownClearStack(88);
  }
  __CrownLoad(90, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(91, (unsigned long )(& __retres5));
# 21 "heuristic-guide.c"
  __retres5 = 0;
  __CrownLoad(92, (unsigned long )(& __retres5), 5, (long long )__retres5, (double )__retres5);
  __CrownReturn(93);
# 6 "heuristic-guide.c"
  return (__retres5);
}
}
void __globinit_heuristic_guide(void)
{


  {
  __CrownInit(94);
}
}
