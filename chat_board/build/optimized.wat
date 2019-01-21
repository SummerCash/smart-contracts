(module
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $i (func (result i32)))
 (type $v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00H\00e\00l\00l\00o\00,\00 \00w\00o\00r\00l\00d\00!")
 (data (i32.const 40) "\04\00\00\00\00\00\00\00\08")
 (data (i32.const 56) "(\00\00\00\01")
 (data (i32.const 64) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 96) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "post" (func $assembly/index/post))
 (export "getMessages" (func $assembly/index/getMessages))
 (func $~lib/internal/arraybuffer/computeSize (; 1 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  get_local $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 2 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 96
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/arraybuffer/computeSize
  drop
  unreachable
 )
 (func $~lib/internal/memory/memcpy (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  loop $continue|0
   get_local $1
   i32.const 3
   i32.and
   get_local $2
   get_local $2
   select
   if
    get_local $0
    tee_local $3
    i32.const 1
    i32.add
    set_local $0
    get_local $3
    block (result i32)
     get_local $1
     tee_local $3
     i32.const 1
     i32.add
     set_local $1
     get_local $3
     i32.load8_u
    end
    i32.store8
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    br $continue|0
   end
  end
  get_local $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $continue|1
    get_local $2
    i32.const 16
    i32.ge_u
    if
     get_local $0
     get_local $1
     i32.load
     i32.store
     get_local $0
     i32.const 4
     i32.add
     get_local $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     get_local $0
     i32.const 8
     i32.add
     get_local $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     get_local $0
     i32.const 12
     i32.add
     get_local $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     get_local $1
     i32.const 16
     i32.add
     set_local $1
     get_local $0
     i32.const 16
     i32.add
     set_local $0
     get_local $2
     i32.const 16
     i32.sub
     set_local $2
     br $continue|1
    end
   end
   get_local $2
   i32.const 8
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    get_local $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    get_local $1
    i32.const 8
    i32.add
    set_local $1
    get_local $0
    i32.const 8
    i32.add
    set_local $0
   end
   get_local $2
   i32.const 4
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $1
    i32.const 4
    i32.add
    set_local $1
    get_local $0
    i32.const 4
    i32.add
    set_local $0
   end
   get_local $2
   i32.const 2
   i32.and
   if
    get_local $0
    get_local $1
    i32.load16_u
    i32.store16
    get_local $1
    i32.const 2
    i32.add
    set_local $1
    get_local $0
    i32.const 2
    i32.add
    set_local $0
   end
   get_local $2
   i32.const 1
   i32.and
   if
    get_local $0
    set_local $3
    get_local $3
    block (result i32)
     get_local $1
     set_local $3
     get_local $3
     i32.load8_u
    end
    i32.store8
   end
   return
  end
  get_local $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       get_local $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      get_local $1
      i32.load
      set_local $4
      get_local $0
      tee_local $3
      i32.const 1
      i32.add
      set_local $0
      get_local $3
      block (result i32)
       get_local $1
       tee_local $3
       i32.const 1
       i32.add
       set_local $1
       get_local $3
       i32.load8_u
      end
      i32.store8
      get_local $0
      tee_local $3
      i32.const 1
      i32.add
      set_local $0
      get_local $3
      block (result i32)
       get_local $1
       tee_local $3
       i32.const 1
       i32.add
       set_local $1
       get_local $3
       i32.load8_u
      end
      i32.store8
      get_local $0
      tee_local $3
      i32.const 1
      i32.add
      set_local $0
      get_local $3
      block (result i32)
       get_local $1
       tee_local $3
       i32.const 1
       i32.add
       set_local $1
       get_local $3
       i32.load8_u
      end
      i32.store8
      get_local $2
      i32.const 3
      i32.sub
      set_local $2
      loop $continue|3
       get_local $2
       i32.const 17
       i32.ge_u
       if
        get_local $0
        get_local $1
        i32.const 1
        i32.add
        i32.load
        tee_local $3
        i32.const 8
        i32.shl
        get_local $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $0
        i32.const 4
        i32.add
        get_local $1
        i32.const 5
        i32.add
        i32.load
        tee_local $4
        i32.const 8
        i32.shl
        get_local $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $0
        i32.const 8
        i32.add
        get_local $1
        i32.const 9
        i32.add
        i32.load
        tee_local $3
        i32.const 8
        i32.shl
        get_local $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $0
        i32.const 12
        i32.add
        get_local $1
        i32.const 13
        i32.add
        i32.load
        tee_local $4
        i32.const 8
        i32.shl
        get_local $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $1
        i32.const 16
        i32.add
        set_local $1
        get_local $0
        i32.const 16
        i32.add
        set_local $0
        get_local $2
        i32.const 16
        i32.sub
        set_local $2
        br $continue|3
       end
      end
      br $break|2
     end
     get_local $1
     i32.load
     set_local $4
     get_local $0
     tee_local $3
     i32.const 1
     i32.add
     set_local $0
     get_local $3
     block (result i32)
      get_local $1
      tee_local $3
      i32.const 1
      i32.add
      set_local $1
      get_local $3
      i32.load8_u
     end
     i32.store8
     get_local $0
     tee_local $3
     i32.const 1
     i32.add
     set_local $0
     get_local $3
     block (result i32)
      get_local $1
      tee_local $3
      i32.const 1
      i32.add
      set_local $1
      get_local $3
      i32.load8_u
     end
     i32.store8
     get_local $2
     i32.const 2
     i32.sub
     set_local $2
     loop $continue|4
      get_local $2
      i32.const 18
      i32.ge_u
      if
       get_local $0
       get_local $1
       i32.const 2
       i32.add
       i32.load
       tee_local $3
       i32.const 16
       i32.shl
       get_local $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $0
       i32.const 4
       i32.add
       get_local $1
       i32.const 6
       i32.add
       i32.load
       tee_local $4
       i32.const 16
       i32.shl
       get_local $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $0
       i32.const 8
       i32.add
       get_local $1
       i32.const 10
       i32.add
       i32.load
       tee_local $3
       i32.const 16
       i32.shl
       get_local $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $0
       i32.const 12
       i32.add
       get_local $1
       i32.const 14
       i32.add
       i32.load
       tee_local $4
       i32.const 16
       i32.shl
       get_local $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $1
       i32.const 16
       i32.add
       set_local $1
       get_local $0
       i32.const 16
       i32.add
       set_local $0
       get_local $2
       i32.const 16
       i32.sub
       set_local $2
       br $continue|4
      end
     end
     br $break|2
    end
    get_local $1
    i32.load
    set_local $4
    get_local $0
    tee_local $3
    i32.const 1
    i32.add
    set_local $0
    get_local $3
    block (result i32)
     get_local $1
     tee_local $3
     i32.const 1
     i32.add
     set_local $1
     get_local $3
     i32.load8_u
    end
    i32.store8
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    loop $continue|5
     get_local $2
     i32.const 19
     i32.ge_u
     if
      get_local $0
      get_local $1
      i32.const 3
      i32.add
      i32.load
      tee_local $3
      i32.const 24
      i32.shl
      get_local $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 4
      i32.add
      get_local $1
      i32.const 7
      i32.add
      i32.load
      tee_local $4
      i32.const 24
      i32.shl
      get_local $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 8
      i32.add
      get_local $1
      i32.const 11
      i32.add
      i32.load
      tee_local $3
      i32.const 24
      i32.shl
      get_local $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 12
      i32.add
      get_local $1
      i32.const 15
      i32.add
      i32.load
      tee_local $4
      i32.const 24
      i32.shl
      get_local $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $1
      i32.const 16
      i32.add
      set_local $1
      get_local $0
      i32.const 16
      i32.add
      set_local $0
      get_local $2
      i32.const 16
      i32.sub
      set_local $2
      br $continue|5
     end
    end
   end
  end
  get_local $2
  i32.const 16
  i32.and
  if
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
  end
  get_local $2
  i32.const 8
  i32.and
  if
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
  end
  get_local $2
  i32.const 4
  i32.and
  if
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
  end
  get_local $2
  i32.const 2
  i32.and
  if
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
   get_local $0
   tee_local $3
   i32.const 1
   i32.add
   set_local $0
   get_local $3
   block (result i32)
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $3
    i32.load8_u
   end
   i32.store8
  end
  get_local $2
  i32.const 1
  i32.and
  if
   get_local $0
   set_local $3
   get_local $3
   block (result i32)
    get_local $1
    set_local $3
    get_local $3
    i32.load8_u
   end
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   return
  end
  get_local $1
  get_local $2
  i32.add
  get_local $0
  i32.le_u
  tee_local $3
  if (result i32)
   get_local $3
  else   
   get_local $0
   get_local $2
   i32.add
   get_local $1
   i32.le_u
  end
  if
   get_local $0
   get_local $1
   get_local $2
   call $~lib/internal/memory/memcpy
   return
  end
  get_local $0
  get_local $1
  i32.lt_u
  if
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    loop $continue|0
     get_local $0
     i32.const 7
     i32.and
     if
      get_local $2
      i32.eqz
      if
       return
      end
      get_local $2
      i32.const 1
      i32.sub
      set_local $2
      get_local $0
      tee_local $3
      i32.const 1
      i32.add
      set_local $0
      get_local $3
      block (result i32)
       get_local $1
       tee_local $3
       i32.const 1
       i32.add
       set_local $1
       get_local $3
       i32.load8_u
      end
      i32.store8
      br $continue|0
     end
    end
    loop $continue|1
     get_local $2
     i32.const 8
     i32.ge_u
     if
      get_local $0
      get_local $1
      i64.load
      i64.store
      get_local $2
      i32.const 8
      i32.sub
      set_local $2
      get_local $0
      i32.const 8
      i32.add
      set_local $0
      get_local $1
      i32.const 8
      i32.add
      set_local $1
      br $continue|1
     end
    end
   end
   loop $continue|2
    get_local $2
    if
     get_local $0
     tee_local $3
     i32.const 1
     i32.add
     set_local $0
     get_local $3
     block (result i32)
      get_local $1
      tee_local $3
      i32.const 1
      i32.add
      set_local $1
      get_local $3
      i32.load8_u
     end
     i32.store8
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     br $continue|2
    end
   end
  else   
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    loop $continue|3
     get_local $0
     get_local $2
     i32.add
     i32.const 7
     i32.and
     if
      get_local $2
      i32.eqz
      if
       return
      end
      get_local $0
      get_local $2
      i32.const 1
      i32.sub
      tee_local $2
      i32.add
      get_local $1
      get_local $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|3
     end
    end
    loop $continue|4
     get_local $2
     i32.const 8
     i32.ge_u
     if
      get_local $2
      i32.const 8
      i32.sub
      tee_local $2
      get_local $0
      i32.add
      get_local $1
      get_local $2
      i32.add
      i64.load
      i64.store
      br $continue|4
     end
    end
   end
   loop $continue|5
    get_local $2
    if
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     tee_local $2
     i32.add
     get_local $1
     get_local $2
     i32.add
     i32.load8_u
     i32.store8
     br $continue|5
    end
   end
  end
 )
 (func $~lib/internal/memory/memset (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  get_local $1
  i32.eqz
  if
   return
  end
  get_local $0
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  i32.const 1
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  i32.const 2
  i32.sub
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  i32.const 3
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  tee_local $2
  get_local $0
  i32.add
  tee_local $0
  i32.const 0
  i32.store
  get_local $1
  get_local $2
  i32.sub
  i32.const -4
  i32.and
  tee_local $1
  get_local $0
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store
  get_local $1
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 8
  i32.add
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  i32.const 12
  i32.sub
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  i32.const 8
  i32.sub
  i32.const 0
  i32.store
  get_local $1
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 16
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 20
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 24
  i32.add
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  i32.const 28
  i32.sub
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  i32.const 24
  i32.sub
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  i32.const 20
  i32.sub
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  i32.const 16
  i32.sub
  i32.const 0
  i32.store
  get_local $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  tee_local $2
  get_local $0
  i32.add
  set_local $0
  get_local $1
  get_local $2
  i32.sub
  set_local $1
  loop $continue|0
   get_local $1
   i32.const 32
   i32.ge_u
   if
    get_local $0
    i64.const 0
    i64.store
    get_local $0
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    get_local $0
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    get_local $0
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    get_local $1
    i32.const 32
    i32.sub
    set_local $1
    get_local $0
    i32.const 32
    i32.add
    set_local $0
    br $continue|0
   end
  end
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  get_local $0
  i32.load
  tee_local $2
  i32.gt_s
  if
   get_local $1
   i32.const 1073741816
   i32.gt_s
   if
    i32.const 0
    i32.const 96
    i32.const 40
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   get_local $1
   get_local $2
   call $~lib/internal/arraybuffer/computeSize
   i32.const 8
   i32.sub
   i32.le_s
   if
    get_local $0
    get_local $1
    i32.store
   else    
    get_local $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    i32.const 8
    i32.add
    get_local $0
    i32.const 8
    i32.add
    get_local $2
    call $~lib/internal/memory/memmove
    unreachable
   end
   get_local $0
   i32.const 8
   i32.add
   get_local $2
   i32.add
   get_local $1
   get_local $2
   i32.sub
   call $~lib/internal/memory/memset
  else   
   get_local $1
   get_local $2
   i32.lt_s
   if
    get_local $1
    i32.const 0
    i32.lt_s
    if
     i32.const 0
     i32.const 96
     i32.const 62
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $0
    get_local $1
    i32.store
   end
  end
  get_local $0
 )
 (func $~lib/array/Array<String>#push (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 60
  i32.load
  tee_local $1
  i32.const 1
  i32.add
  set_local $2
  get_local $1
  i32.const 56
  i32.load
  tee_local $3
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 64
    i32.const 182
    i32.const 42
    call $~lib/env/abort
    unreachable
   end
   i32.const 56
   get_local $3
   get_local $2
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   tee_local $3
   i32.store
  end
  i32.const 60
  get_local $2
  i32.store
  get_local $1
  i32.const 2
  i32.shl
  get_local $3
  i32.add
  get_local $0
  i32.store offset=8
  get_local $2
 )
 (func $assembly/index/post (; 8 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/array/Array<String>#push
  drop
  i32.const 0
 )
 (func $assembly/index/getMessages (; 9 ;) (type $i) (result i32)
  i32.const 56
 )
 (func $null (; 10 ;) (type $v)
  nop
 )
)
