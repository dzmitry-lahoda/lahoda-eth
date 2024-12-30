-- deserealizaiton only parts


def deserialize_u8 (stream: IO.FS.Stream) : IO (Option UInt8) := do
  let b ← stream.read 1
  pure b[0]?


-- TODO: how to read from some kind of slice/iterator, not hardcoded dep to stream?
def deserialize_u16 (stream: IO.FS.Stream) : IO (Option UInt16) := do
  let data ← stream.read 2
  let less := data[0]?
  let more := data[1]?
  let result := match less, more with
    -- TODO: does not feels efficient to convert into 2 u16, better do it once and then just bit shift it
    | some less, some more => some (less.toUInt16 + more.toUInt16 * 256)
    | _, _ => none

  pure result
