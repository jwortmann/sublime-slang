// SYNTAX TEST partial-symbols "Packages/Slang/Slang.sublime-syntax"

// ===[ Merge-Conflict Markers ]================================================

<<<<<<< HEAD
// ^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// ^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// ^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation

// ===[ Preprocessor Directives ]===============================================

    #language slang 2026
//  ^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.slang
//  ^ punctuation.definition.preprocessor.slang
//   ^^^^^^^^ keyword.other.preprocessor.slang

    #define FOO 1.0f
//  ^^^^^^^^^^^^^^^^^ meta.preprocessor.slang
//  ^ punctuation.definition.preprocessor.slang
//   ^^^^^^ keyword.other.preprocessor.slang

    #define FOO(x) 1.0 + x

// ===[ Comments ]==============================================================

    // comment
//  ^^^^^^^^^^^ comment.line.double-slash.slang
//  ^^ punctuation.definition.comment.slang

    // TODO: lorem ipsum
//  ^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.slang
//  ^^ punctuation.definition.comment.slang
//     ^^^^^^^^^^^^^^^^^ meta.codetag.todo.slang
//     ^^^^ entity.name.label.todo.slang

    // FIXME: lorem ipsum
//  ^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.slang
//  ^^ punctuation.definition.comment.slang
//     ^^^^^^^^^^^^^^^^^^ meta.codetag.fixme.slang
//     ^^^^^ entity.name.label.fixme.slang

    /* ... */
//  ^^^^^^^^^ comment.block.slang
//           ^ - comment
//  ^^ punctuation.definition.comment.begin.slang
//         ^^ punctuation.definition.comment.end.slang

    /*
//  ^^^ comment.block.slang
//  ^^ punctuation.definition.comment.begin.slang
    /*
//  ^^ - punctuation.definition.comment
    */
//  ^^ comment.block.slang punctuation.definition.comment.end.slang
//    ^ - comment

    __ignored_block
//  ^^^^^^^^^^^^^^^ keyword.other.slang
    {
//  ^^ meta.block.slang
//  ^ punctuation.section.block.begin.slang
        arbitrary content in the source file,
        will be ignored by the compiler as if it is a comment.
        Can have nested {} here.
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.slang comment.block.slang
    }
//  ^ meta.block.slang punctuation.section.block.end.slang - comment

// ===[ Built-in Constants ]====================================================

    true
//  ^^^^ constant.language.boolean.true.slang

    false
//  ^^^^^ constant.language.boolean.false.slang

// ===[ Integer and Floating-Point Literals ]===================================

    0
//  ^ meta.number.integer.decimal.slang constant.numeric.value.slang

    2147483647
//  ^^^^^^^^^^ meta.number.integer.decimal.slang constant.numeric.value.slang

    -2147483648
//  ^ keyword.operator.arithmetic.slang
//   ^^^^^^^^^^ meta.number.integer.decimal.slang constant.numeric.value.slang

    2_147_483_647
//  ^^^^^^^^^^^^^ meta.number.integer.decimal.slang constant.numeric.value.slang

    0U
//  ^^ meta.number.integer.decimal.slang
//  ^ constant.numeric.value.slang
//   ^ constant.numeric.suffix.slang

    5000000000U
//  ^^^^^^^^^^^ meta.number.integer.decimal.slang
//  ^^^^^^^^^^ constant.numeric.value.slang
//            ^ constant.numeric.suffix.slang

    1000L
//  ^^^^^ meta.number.integer.decimal.slang
//  ^^^^ constant.numeric.value.slang
//      ^ constant.numeric.suffix.slang

    1000LL
//  ^^^^^^ meta.number.integer.decimal.slang
//  ^^^^ constant.numeric.value.slang
//      ^^ constant.numeric.suffix.slang

    1000UL
//  ^^^^^^ meta.number.integer.decimal.slang
//  ^^^^ constant.numeric.value.slang
//      ^^ constant.numeric.suffix.slang

    1000ULL
//  ^^^^^^^ meta.number.integer.decimal.slang
//  ^^^^ constant.numeric.value.slang
//      ^^^ constant.numeric.suffix.slang

    0xDEADBEEF
//  ^^^^^^^^^^ meta.number.integer.hexadecimal.slang
//  ^^ constant.numeric.base.slang
//    ^^^^^^^^ constant.numeric.value.slang

    0b11010111
//  ^^^^^^^^^^ meta.number.integer.binary.slang
//  ^^ constant.numeric.base.slang
//    ^^^^^^^^ constant.numeric.value.slang

    0b11010111U
//  ^^^^^^^^^^^ meta.number.integer.binary.slang
//  ^^ constant.numeric.base.slang
//    ^^^^^^^^ constant.numeric.value.slang
//            ^ constant.numeric.suffix.slang

    0377
//  ^^^^ meta.number.integer.octal.slang
//  ^ constant.numeric.base.slang
//   ^^^ constant.numeric.value.slang

    123.0
//  ^^^^^ meta.number.float.decimal.slang constant.numeric.value
//     ^ punctuation.separator.decimal.slang

    123.
//  ^^^^ meta.number.float.decimal.slang constant.numeric.value
//     ^ punctuation.separator.decimal.slang

    .5
//  ^^ meta.number.float.decimal.slang constant.numeric.value
//  ^ punctuation.separator.decimal.slang

    123e3
//  ^^^^^ meta.number.float.decimal.slang constant.numeric.value

    123e+3
//  ^^^^^^ meta.number.float.decimal.slang constant.numeric.value

    123e-3
//  ^^^^^^ meta.number.float.decimal.slang constant.numeric.value

    1.23e2
//  ^^^^^^ meta.number.float.decimal.slang constant.numeric.value
//   ^ punctuation.separator.decimal.slang

    0x123p4
//  ^^^^^^^ meta.number.float.hexadecimal.slang
//  ^^ constant.numeric.base.slang
//    ^^^^^ constant.numeric.value.slang

    0xC8p-4
//  ^^^^^^^ meta.number.float.hexadecimal.slang
//  ^^ constant.numeric.base.slang
//    ^^^^^ constant.numeric.value.slang

    0xC.8p0
//  ^^^^^^^ meta.number.float.hexadecimal.slang
//  ^^ constant.numeric.base.slang
//    ^^^^^ constant.numeric.value.slang
//     ^ punctuation.separator.decimal.slang

    123.0lf
//  ^^^^^^^ meta.number.float.decimal.slang
//  ^^^^^ constant.numeric.value.slang
//       ^^ constant.numeric.suffix.slang

    123.0hf
//  ^^^^^^^ meta.number.float.decimal.slang
//  ^^^^^ constant.numeric.value.slang
//       ^^ constant.numeric.suffix.slang

    1#INFhf
//  ^^^^^^^ meta.number.float.decimal.slang
//  ^^^^^ constant.numeric.value.slang
//       ^^ constant.numeric.suffix.slang

    1#INFf
//  ^^^^^^ meta.number.float.decimal.slang
//  ^^^^^ constant.numeric.value.slang
//       ^ constant.numeric.suffix.slang

    1#INFlf
//  ^^^^^^^ meta.number.float.decimal.slang
//  ^^^^^ constant.numeric.value.slang
//       ^^ constant.numeric.suffix.slang

// ===[ Strings ]===============================================================

    ""
//  ^^ meta.string.slang string.quoted.double.slang
//  ^ punctuation.definition.string.begin.slang
//   ^ punctuation.definition.string.end.slang

    "123"
//  ^^^^^ meta.string.slang string.quoted.double.slang
//  ^ punctuation.definition.string.begin.slang
//      ^ punctuation.definition.string.end.slang

    "some\nstring"
//  ^^^^^^^^^^^^^^ meta.string.slang string.quoted.double.slang
//       ^^ constant.character.escape.slang

    "a \"quoted\" string"
//  ^^^^^^^^^^^^^^^^^^^^^ meta.string.slang string.quoted.double.slang
//     ^^ constant.character.escape.slang
//             ^^ constant.character.escape.slang

    "contains a ' quote"
//  ^^^^^^^^^^^^^^^^^^^^ meta.string.slang string.quoted.double.slang

    "\110\145\154\154\157"
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.string.slang string.quoted.double.slang
//   ^^^^^^^^^^^^^^^^^^^^ constant.character.escape.slang

    "\x48\x65\x6C\x6C\x6F"
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.string.slang string.quoted.double.slang
//   ^^^^^^^^^^^^^^^^^^^^ constant.character.escape.slang

    "\x{41}BC"
//  ^^^^^^^^^^ meta.string.slang string.quoted.double.slang
//   ^^^^^^ constant.character.escape.slang

    "\0"
//  ^^^^ meta.string.slang string.quoted.double.slang
//   ^^ constant.character.escape.slang

    R"(Raw " string)"
//  ^^^^^^^^^^^^^^^^^ meta.string.slang string.quoted.double.slang
//   ^ punctuation.definition.string.begin.slang
//         ^ - punctuation.definition.string
//                  ^ punctuation.definition.string.end.slang

    R"xz(Raw " string)xz"
//  ^^^^^^^^^^^^^^^^^ meta.string.slang string.quoted.double.slang
//   ^ punctuation.definition.string.begin.slang
//           ^ - punctuation.definition.string
//                      ^ punctuation.definition.string.end.slang

    R"(ABC
//  ^^^^^^^ meta.string.slang string.quoted.double.slang
//   ^ punctuation.definition.string.begin.slang
    DEF)"
//  ^^^^^ meta.string.slang string.quoted.double.slang
//      ^ punctuation.definition.string.end.slang

    "😊"
//  ^^^ meta.string.slang string.quoted.double.slang

    "\u{1F60A}"
//  ^^^^^^^^^^^ meta.string.slang string.quoted.double.slang
//   ^^^^^^^^^ constant.character.escape.slang

    "\U0001F60A"
//  ^^^^^^^^^^^^ meta.string.slang string.quoted.double.slang
//   ^^^^^^^^^^ constant.character.escape.slang

    '\0'
//  ^^^^ meta.string.slang string.quoted.single.slang
//   ^^ constant.character.escape.slang

    'A'
//  ^^^ meta.string.slang string.quoted.single.slang

    '\t'
//  ^^^^ meta.string.slang string.quoted.single.slang
//   ^^ constant.character.escape.slang

    '\x53'
//  ^^^^^^ meta.string.slang string.quoted.single.slang
//   ^^^^ constant.character.escape.slang

    '"'
//  ^^^ meta.string.slang string.quoted.single.slang

    '\''
//  ^^^^ meta.string.slang string.quoted.single.slang
//   ^^ constant.character.escape.slang

    '\\'
//  ^^^^ meta.string.slang string.quoted.single.slang
//   ^^ constant.character.escape.slang

    '\110'
//  ^^^^^^ meta.string.slang string.quoted.single.slang
//   ^^^^ constant.character.escape.slang

    '\x{75bcd15}'
//  ^^^^^^^^^^^^^ meta.string.slang string.quoted.single.slang
//   ^^^^^^^^^^^ constant.character.escape.slang

    '\u{75bcd15}'
//  ^^^^^^^^^^^^^ meta.string.slang string.quoted.single.slang
//   ^^^^^^^^^^^ constant.character.escape.slang

    '😊'
//  ^^^ meta.string.slang string.quoted.single.slang

// ===[ Operators ]=============================================================
// https://github.com/shader-slang/slang/blob/master/docs/language-reference/expressions-operators.md

    +a
//  ^ keyword.operator.arithmetic.slang

    -a
//  ^ keyword.operator.arithmetic.slang

    ++a
//  ^^ keyword.operator.arithmetic.slang

    a++
//   ^^ keyword.operator.arithmetic.slang

    --a
//  ^^ keyword.operator.arithmetic.slang

    a--
//   ^^ keyword.operator.arithmetic.slang

    a * b
//    ^ keyword.operator.arithmetic.slang

    a / b
//    ^ keyword.operator.arithmetic.slang

    a % b
//    ^ keyword.operator.arithmetic.slang

    a + b
//    ^ keyword.operator.arithmetic.slang

    a - b
//    ^ keyword.operator.arithmetic.slang

    !a
//  ^ keyword.operator.logical.slang

    a && b
//    ^^ keyword.operator.logical.slang

    a || b
//    ^^ keyword.operator.logical.slang

    ~a
//  ^ keyword.operator.bitwise.slang

    a & b
//    ^ keyword.operator.bitwise.slang

    a ^ b
//    ^ keyword.operator.bitwise.slang

    a | b
//    ^ keyword.operator.bitwise.slang

    a << b
//    ^^ keyword.operator.bitwise.slang

    a >> b
//    ^^ keyword.operator.bitwise.slang

    a < b
//    ^ keyword.operator.comparison.slang

    a <= b
//    ^^ keyword.operator.comparison.slang

    a > b
//    ^ keyword.operator.comparison.slang

    a >= b
//    ^^ keyword.operator.comparison.slang

    a == b
//    ^^ keyword.operator.comparison.slang

    a != b
//    ^^ keyword.operator.comparison.slang

    a = b
//    ^ keyword.operator.assignment.slang

    a += b
//    ^^ keyword.operator.assignment.slang

    a -= b
//    ^^ keyword.operator.assignment.slang

    a *= b
//    ^^ keyword.operator.assignment.slang

    a /= b
//    ^^ keyword.operator.assignment.slang

    a %= b
//    ^^ keyword.operator.assignment.slang

    a &= b
//    ^^ keyword.operator.assignment.slang

    a |= b
//    ^^ keyword.operator.assignment.slang

    a ^= b
//    ^^ keyword.operator.assignment.slang

    a <<= b
//    ^^^ keyword.operator.assignment.slang

    a >>= b
//    ^^^ keyword.operator.assignment.slang

    a ? b : c
//    ^ keyword.operator.ternary.slang
//        ^ keyword.operator.ternary.slang

    T is IFoo
//    ^^ keyword.operator.word.slang

// ===[ Types ]=================================================================

    int8_t
//  ^^^^^^ storage.type.slang

    int16_t
//  ^^^^^^^ storage.type.slang

    int
//  ^^^ storage.type.slang

    int64_t
//  ^^^^^^^ storage.type.slang

    uint8_t
//  ^^^^^^^ storage.type.slang

    uint16_t
//  ^^^^^^^^ storage.type.slang

    uint
//  ^^^^ storage.type.slang

    uint64_t
//  ^^^^^^^^ storage.type.slang

    half
//  ^^^^ storage.type.slang

    float
//  ^^^^^ storage.type.slang

    double
//  ^^^^^^ storage.type.slang

    bool
//  ^^^^ storage.type.slang

    void
//  ^^^^ storage.type.slang

    float3
//  ^^^^^^ storage.type.slang

    float3x4
//  ^^^^^^^^ storage.type.slang

    vector<float,3>
//  ^^^^^^ storage.type.slang
//        ^^^^^^^^^ meta.generic.slang
//        ^ punctuation.definition.generic.begin.slang
//         ^^^^^ storage.type.slang
//              ^ punctuation.separator.comma.slang
//               ^ meta.number.integer.decimal.slang constant.numeric.value.slang
//                ^ punctuation.definition.generic.end.slang

    matrix<float,3,4>
//  ^^^^^^ storage.type.slang
//        ^^^^^^^^^^^ meta.generic.slang
//        ^ punctuation.definition.generic.begin.slang
//         ^^^^^ storage.type.slang
//              ^ punctuation.separator.comma.slang
//               ^ meta.number.integer.decimal.slang constant.numeric.value.slang
//                ^ punctuation.separator.comma.slang
//                 ^ meta.number.integer.decimal.slang constant.numeric.value.slang
//                  ^ punctuation.definition.generic.end.slang

    Texture2D
//  ^^^^^^^^^ support.type.slang

    Texture4D
//  ^^^^^^^^^ - support.type

    Buffer<float4>
//  ^^^^^^ support.type.slang
//        ^^^^^^^^ meta.generic.slang
//        ^ punctuation.definition.generic.begin.slang
//         ^^^^^^ storage.type.slang
//               ^ punctuation.definition.generic.end.slang

// ===[ Misc Declarations ]=====================================================

    module scene;
//  ^^^^^^ keyword.declaration.module.slang
//         ^^^^^ entity.name.module.slang
//              ^ punctuation.terminator.semicolon.slang

    implementing scene;
//  ^^^^^^^^^^^^ keyword.declaration.impl.slang
//               ^^^^^ entity.name.impl.slang
//                    ^ punctuation.terminator.semicolon.slang

    implementing "scene";
//  ^^^^^^^^^^^^ keyword.declaration.impl.slang
//               ^^^^^^^ meta.string.slang string.quoted.double.slang
//                      ^ punctuation.terminator.semicolon.slang

    typealias vec3 = float3;
//  ^^^^^^^^^ keyword.declaration.type.slang
//            ^^^^ variable.other.slang
//                 ^ keyword.operator.assignment.slang
//                   ^^^^^^ storage.type.slang
//                         ^ punctuation.terminator.semicolon.slang

// FIXME
    public typealias Differential = WaveTangledVector<T, ShMemSize, N, SubgroupSize, SubgroupCount>;
    public typealias ShMemPool = SharedMemoryPool<ShMemSize>;
    internal typealias uvec<int Dim> = Array<uint32_t, Dim>;

    typedef float3 vec3;
//  ^^^^^^^ keyword.declaration.type.slang
//          ^^^^^^ storage.type.slang
//                 ^^^^ variable.other.slang
//                     ^ punctuation.terminator.semicolon.slang

// ===[ Namespace Declarations ]================================================

    namespace ns
//  ^^^^^^^^^^^^^ meta.namespace.slang
//  ^^^^^^^^^ keyword.declaration.namespace.slang
//            ^^ entity.name.namespace.slang
//            @@ definition
    {
//  ^^ meta.namespace.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        int f();
    }

    namespace ns1.ns2
//  ^^^^^^^^^^^^^^^^^^ meta.namespace.slang
//  ^^^^^^^^^ keyword.declaration.namespace.slang
//            ^^^ entity.name.namespace.slang
//            @@@ definition
//               ^ punctuation.accessor.dot.slang
//                ^^^ entity.name.namespace.slang
//                @@@ definition
    {
//  ^^ meta.namespace.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        int f();
    }

    namespace ns1::ns2
//  ^^^^^^^^^^^^^^^^^^^ meta.namespace.slang
//  ^^^^^^^^^ keyword.declaration.namespace.slang
//            ^^^ entity.name.namespace.slang
//            @@@ definition
//               ^^ punctuation.accessor.double-colon.slang
//                 ^^^ entity.name.namespace.slang
//                 @@@ definition
    {
//  ^^ meta.namespace.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        int f();
    }

    namespace ns1
//  ^^^^^^^^^^^^^^ meta.namespace.slang
//  ^^^^^^^^^ keyword.declaration.namespace.slang
//            ^^^ entity.name.namespace.slang
//            @@@ definition
    {
//  ^^ meta.namespace.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        namespace ns2
//      ^^^^^^^^^^^^^^ meta.namespace.slang meta.namespace.slang
//      ^^^^^^^^^ keyword.declaration.namespace.slang
//                ^^^ entity.name.namespace.slang
//                @@@ definition
        {
//      ^^ meta.namespace.slang meta.block.slang meta.namespace.slang meta.block.slang
//      ^ punctuation.section.block.begin.slang
            int f();
        }
    }

// ===[ Struct Declarations ]===================================================

    struct MyData
//  ^^^^^^^^^^^^^^ meta.struct.slang
//  ^^^^^^ keyword.declaration.struct.slang
//         ^^^^^^ entity.name.struct.slang
//         @@@@@@ definition
    {
//  ^^ meta.struct.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        int a;
//      ^^^ storage.type.slang
//          ^ variable.other.slang
//           ^ punctuation.terminator.semicolon.slang
        float b;
    }
//  ^ meta.struct.slang meta.block.slang punctuation.section.block.end.slang
//   ^ - meta.struct - meta.block

    public struct FrameInfo
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct.slang
//  ^^^^^^ storage.modifier.slang
//         ^^^^^^ keyword.declaration.struct.slang
//                ^^^^^^^^^ entity.name.struct.slang
//                @@@@@@@@@ definition
    {
        float3 cameraPosition;
        float4x4 viewMatrix;
        private int frameId;
//      ^^^^^^^ storage.modifier.slang
//              ^^^ storage.type.slang
//                  ^^^^^^^ variable.other.slang
//                         ^ punctuation.terminator.semicolon.slang
    }

    struct VertexOutput
    {
        nointerpolation int a : SOME_VALUE;
        float3              b : SV_Position;
    }

    struct MyType : IDifferentiable
    {
        no_diff float member;
        float someOtherMember;
    }

    struct MyType
    {
        private int member;

        int f() { member = 5; }

        struct ChildType
        {
            int g(MyType t)
            {
                return t.member;
            }
        }
    }

    struct MyType
    {
        __transparent_block
//      ^^^^^^^^^^^^^^^^^^^ keyword.other.slang
        {
            int myFunc() { return 0; }
        }
    }

    __file_decl
//  ^^^^^^^^^^^ keyword.other.slang
    {
        void f1()
        {
        }
    }

    cbuffer PerFrameCB
//  ^^^^^^^^^^^^^^^^^^^ meta.struct.slang
//  ^^^^^^^ keyword.declaration.struct.slang
//          ^^^^^^^^^^ entity.name.struct.slang
//          @@@@@@@@@@ definition
    {
//  ^^ meta.struct.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        float4x4 mvp;
//      ^^^^^^^^ storage.type.slang
//               ^^^ variable.other.slang
//                  ^ punctuation.terminator.semicolon.slang
        float4 skyColor;
    }
//  ^ meta.struct.slang meta.block.slang punctuation.section.block.end.slang
//   ^ - meta.struct - meta.block

// ===[ Enum Declarations ]=====================================================

    enum Channel
//  ^^^^^^^^^^^^^ meta.enum.slang
//  ^^^^ keyword.declaration.enum.slang
//       ^^^^^^^ entity.name.enum.slang
//       @@@@@@@ definition
    {
//  ^^ meta.enum.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        Red = 5,
//      ^^^ variable.other.slang
//          ^ keyword.operator.assignment.slang
//            ^ constant.numeric.value.slang
//             ^ punctuation.separator.comma.slang
        Green,
        Blue
    }
//  ^ meta.enum.slang meta.block.slang punctuation.section.block.end.slang
//   ^ - meta.enum - meta.block

    enum Channel : uint16_t
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.slang
//  ^^^^ keyword.declaration.enum.slang
//       ^^^^^^^ entity.name.enum.slang
//       @@@@@@@ definition
//               ^ punctuation.separator.type.slang
//                 ^^^^^^^^ storage.type.slang
    {
        Red, Green, Blue
    }

// ===[ Function Declarations ]=================================================

    func addSomeThings(x : int, y : float) -> float
//  ^^^^^^^^^^^^^^^^^^ meta.function.slang
//                    ^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.slang - meta.function meta.function
//                                        ^^^^^^^^^^ meta.function.slang
//  ^^^^ keyword.declaration.function.slang
//       ^^^^^^^^^^^^^ entity.name.function.slang
//       @@@@@@@@@@@@@ definition
//                    ^ punctuation.section.parameters.begin.slang
//                     ^ variable.parameter.slang
//                       ^ punctuation.separator.type.slang
//                         ^^^ storage.type.slang
//                            ^ punctuation.separator.parameters.slang
//                              ^ variable.parameter.slang
//                                ^ punctuation.separator.type.slang
//                                  ^^^^^ storage.type.slang
//                                       ^ punctuation.section.parameters.end.slang
//                                         ^^ punctuation.separator.return-type.slang
//                                            ^^^^^ storage.type.slang
    {
//  ^^ meta.function.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        return x + y;
//      ^^^^^^ keyword.control.flow.return.slang
    }

    func foo<let N : int>(f: functype() -> vector<float, N>) -> vector<float, N>
//  ^^^^^^^^^^^^^^^^^^^^^ meta.function.slang
//  ^^^^ keyword.declaration.function.slang
//       ^^^ entity.name.function.slang
//       @@@ definition
//          ^^^^^^^^^^^^^ meta.generic.slang
//          ^ punctuation.definition.generic.begin.slang
//           ^^^ keyword.declaration.constant.slang
//               ^ support.type.slang
//                 ^ punctuation.separator.type.slang
//                   ^^^ storage.type.slang
//                      ^ punctuation.definition.generic.end.slang
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.slang
//                       ^ punctuation.section.parameters.begin.slang
//                        ^ variable.parameter.slang
//                         ^ punctuation.separator.type.slang
//                           ^^^^^^^^ storage.type.slang
//                                   ^ punctuation.section.parameters.begin.slang
//                                    ^ punctuation.section.parameters.end.slang
//                                      ^^ punctuation.separator.return-type.slang
//                                         ^^^^^^ storage.type.slang
//                                               ^^^^^^^^^^ meta.generic.slang
//                                               ^ punctuation.definition.generic.begin.slang
//                                                ^^^^^ storage.type.slang
//                                                     ^ punctuation.separator.comma.slang
//                                                       ^ support.type.slang
//                                                        ^ punctuation.definition.generic.end.slang
//                                                         ^ punctuation.section.parameters.end.slang
//                                                          ^^^^^^^^^^^^^^^^^^^^^ meta.function.slang
//                                                           ^^ punctuation.separator.return-type.slang
//                                                              ^^^^^^ storage.type.slang
//                                                                    ^^^^^^^^^^ meta.generic.slang
//                                                                    ^ punctuation.definition.generic.begin.slang
//                                                                     ^^^^^ storage.type.slang
//                                                                          ^ punctuation.separator.comma.slang
//                                                                            ^ support.type.slang
//                                                                             ^ punctuation.definition.generic.end.slang
    {
//  ^^ meta.function.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        return f();
    }

    float addSomeThings(int x, float y)
//  ^^^^^^^^^^^^^^^^^^^ meta.function.slang
//  ^^^^^ storage.type.slang
//        ^^^^^^^^^^^^^ entity.name.function.slang
//        @@@@@@@@@@@@@ definition
//                     ^^^^^^^^^^^^^^^^ meta.function.parameters.slang
//                     ^ punctuation.section.parameters.begin.slang
//                      ^^^ storage.type.slang
//                          ^ variable.parameter.slang
//                           ^ punctuation.separator.parameters.slang
//                             ^^^^^ storage.type.slang
//                                   ^ variable.parameter.slang
//                                    ^ punctuation.section.parameters.end.slang
    {
//  ^^ meta.function.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        return x + y;
    }

// TODO: meta.function scope should include the `public` keyword
    public float addSomeThings(int x, float y)
//         ^^^^^^^^^^^^^^^^^^^ meta.function.slang
//  ^^^^^^ storage.modifier.slang
//         ^^^^^ storage.type.slang
//               ^^^^^^^^^^^^^ entity.name.function.slang
//               @@@@@@@@@@@@@ definition
//                            ^^^^^^^^^^^^^^^^ meta.function.parameters.slang
//                            ^ punctuation.section.parameters.begin.slang
//                             ^^^ storage.type.slang
//                                 ^ variable.parameter.slang
//                                  ^ punctuation.separator.parameters.slang
//                                    ^^^^^ storage.type.slang
//                                          ^ variable.parameter.slang
//                                           ^ punctuation.section.parameters.end.slang
    {
//  ^^ meta.function.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        return x + y;
    }

// FIXME
    int test(MyType* pObj)
    {
        MyType* pNext = pObj + 1;
        MyType* pNext2 = &pNext[1];
        return pNext.a + pNext->a + (*pNext2).a + pNext2[0].a;
    }

// FIXME
    int f() throws MyError
    {
        if (computerIsBroken())
            throw MyError.CatastrophicFailure;
        return 42;
    }

    T compute<T:IInteger>(T a, T b)
//  ^^^^^^^^^^^^^^^^^^^^^ meta.function.slang
//  ^ support.type.slang
//    ^^^^^^^ entity.name.function.slang
//    @@@@@@@ definition
//           ^^^^^^^^^^^^ meta.generic.slang
//           ^ punctuation.definition.generic.begin.slang
//            ^ support.type.slang
//             ^ punctuation.separator.type.slang
//              ^^^^^^^^ support.type.slang
//                      ^ punctuation.definition.generic.end.slang
//                       ^^^^^^^^^^ meta.function.parameters.slang
//                       ^ punctuation.section.parameters.begin.slang
//                        ^ support.type.slang
//                          ^ variable.parameter.slang
//                           ^ punctuation.separator.parameters.slang
//                             ^ support.type.slang
//                               ^ variable.parameter.slang
//                                ^ punctuation.section.parameters.end.slang
    {
//  ^^ meta.function.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        return a * b + T(1);
    }

    [shader("closesthit")]
    void MyClosestHitShader(inout RayPayload payload, in MyAttributes attr)
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.function.slang
//  ^^^^ storage.type.slang
//       ^^^^^^^^^^^^^^^^^^ entity.name.function.slang
//       @@@@@@@@@@@@@@@@@@ definition
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.slang
//                         ^ punctuation.section.parameters.begin.slang
//                          ^^^^^ storage.modifier.slang
//                                ^^^^^^^^^^ support.type.slang
//                                           ^^^^^^^ variable.parameter.slang
//                                                  ^ punctuation.separator.parameters.slang
//                                                    ^^ storage.modifier.slang
//                                                       ^^^^^^^^^^^^ support.type.slang
//                                                                    ^^^^ variable.parameter.slang
//                                                                        ^ punctuation.section.parameters.end.slang
    {
//  ^^ meta.function.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
    }

// ===[ Extension Declarations ]================================================

    extension MyVector
//  ^^^^^^^^^^^^^^^^^^^ meta.trait.slang
//  ^^^^^^^^^ keyword.declaration.trait.slang
//            ^^^^^^^^ entity.name.trait.slang
//            @@@@@@@@ definition
    {
//  ^^ meta.trait.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        float getLength() { return sqrt(x*x + y*y); }
        static int getDimensionality() { return 2; }
    }

    extension MyVector : IPrintable
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.trait.slang
//  ^^^^^^^^^ keyword.declaration.trait.slang
//            ^^^^^^^^ entity.name.trait.slang
//            @@@@@@@@ definition
//                     ^ punctuation.separator.type.slang
//                       ^^^^^^^^^^ support.type.slang
    {
//  ^^ meta.trait.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
    }

    internal extension<T> Ptr<T, Access.ReadWrite, AddressSpace.Device> : IPointerLikeAddress<T>
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.trait.slang
//           ^^^^^^^^^ keyword.declaration.trait.slang
//                    ^^^ meta.generic.slang
//                    ^ punctuation.definition.generic.begin.slang
//                     ^ support.type.slang
//                      ^ punctuation.definition.generic.end.slang
//                        ^^^ entity.name.trait.slang
//                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.slang
//                                                                      ^ punctuation.separator.type.slang
//                                                                        ^^^^^^^^^^^^^^^^^^^ support.type.slang
//                                                                                           ^^^ meta.generic.slang
        where T : __BuiltinFloatingPointType
        where T.Differential == T
    {
//  ^^ meta.trait.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
    }

// ===[ Interfaces and Generics ]===============================================

    interface IFoo
//  ^^^^^^^^^^^^^^^ meta.interface.slang
//  ^^^^^^^^^ keyword.declaration.interface.slang
//            ^^^^ entity.name.interface.slang
//            @@@@ definition
    {
//  ^^ meta.interface.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        int myMethod(float arg);
        int getVal() { return 0; }
    }

    struct MyType : IFoo, IBar
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct.slang
//  ^^^^^^ keyword.declaration.struct.slang
//         ^^^^^^ entity.name.struct.slang
//         @@@@@@ definition
//                ^ punctuation.separator.type.slang
//                  ^^^^ entity.other.inherited-class.slang
//                      ^ punctuation.separator.comma.slang
//                        ^^^^ entity.other.inherited-class.slang
    {
//  ^^ meta.struct.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        int myMethod(float arg) {}
        override int getVal() { return 1; }
//      ^^^^^^^^ storage.modifier.slang
    }

    int myGenericMethod<T>(T arg) where T : IFoo
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.function.slang
//  ^^^ storage.type.slang
//      ^^^^^^^^^^^^^^^ entity.name.function.slang
//      @@@@@@@@@@@@@@@ definition
//                     ^^^ meta.generic.slang
//                     ^ punctuation.definition.generic.begin.slang
//                      ^ support.type.slang
//                       ^ punctuation.definition.generic.end.slang
//                        ^^^^^^^ meta.function.parameters.slang
//                        ^ punctuation.section.parameters.begin.slang
//                         ^ support.type.slang
//                           ^^^ variable.parameter.slang
//                              ^ punctuation.section.parameters.end.slang
//                               ^^^^^^^^^^^^^^^^ meta.function.slang
//                                ^^^^^ keyword.other.slang
//                                      ^ support.type.slang
//                                        ^ punctuation.separator.type.slang
//                                          ^^^^ support.type.slang
    {
//  ^^ meta.function.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        return arg.myMethod(1.0);
    }

    __generic<typename T>
//  ^^^^^^^^^ keyword.other.slang
//           ^^^^^^^^^^^^ meta.generic.slang
//           ^ punctuation.definition.generic.begin.slang
//            ^^^^^^^^ keyword.declaration.generic.slang
//                     ^ support.type.slang
//                      ^ punctuation.definition.generic.end.slang

    __generic<T>
//  ^^^^^^^^^ keyword.other.slang
//           ^^^ meta.generic.slang
//           ^ punctuation.definition.generic.begin.slang
//            ^ support.type.slang
//             ^ punctuation.definition.generic.end.slang

    int myGenericMethod(T arg) where T : IFoo
//  ^^^^^^^^^^^^^^^^^^^ meta.function.slang
//  ^^^ storage.type.slang
//      ^^^^^^^^^^^^^^^ entity.name.function.slang
//      @@@@@@@@@@@@@@@ definition
//                     ^^^^^^^ meta.function.parameters.slang
//                     ^ punctuation.section.parameters.begin.slang
//                      ^ support.type.slang
//                        ^^^ variable.parameter.slang
//                           ^ punctuation.section.parameters.end.slang
//                            ^^^^^^^^^^^^^^^^ meta.function.slang
//                             ^^^^^ keyword.other.slang
//                                   ^ support.type.slang
//                                     ^ punctuation.separator.type.slang
//                                       ^^^^ support.type.slang
    {
//  ^^ meta.function.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        return arg.myMethod(1.0);
    }

    int myGenericMethod<T:IFoo>(T arg)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.slang
//  ^^^ storage.type.slang
//      ^^^^^^^^^^^^^^^ entity.name.function.slang
//      @@@@@@@@@@@@@@@ definition
//                     ^^^^^^^^ meta.generic.slang
//                     ^ punctuation.definition.generic.begin.slang
//                      ^ support.type.slang
//                       ^ punctuation.separator.type.slang
//                        ^^^^ support.type.slang
//                            ^ punctuation.definition.generic.end.slang
//                             ^^^^^^^ meta.function.parameters.slang
//                             ^ punctuation.section.parameters.begin.slang
//                              ^ support.type.slang
//                                ^^^ variable.parameter.slang
//                                   ^ punctuation.section.parameters.end.slang
    {
//  ^^ meta.function.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        return arg.myMethod(1.0);
    }

    int myGenericMethod<T>(T arg) where optional T : IFoo
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.function.slang
//  ^^^ storage.type.slang
//      ^^^^^^^^^^^^^^^ entity.name.function.slang
//      @@@@@@@@@@@@@@@ definition
//                     ^^^ meta.generic.slang
//                     ^ punctuation.definition.generic.begin.slang
//                      ^ support.type.slang
//                       ^ punctuation.definition.generic.end.slang
//                        ^^^^^^^ meta.function.parameters.slang
//                        ^ punctuation.section.parameters.begin.slang
//                         ^ support.type.slang
//                           ^^^ variable.parameter.slang
//                              ^ punctuation.section.parameters.end.slang
//                               ^^^^^^^^^^^^^^^^ meta.function.slang
//                                ^^^^^ keyword.other.slang
//                                      ^^^^^^^^ storage.modifier.slang
//                                               ^ support.type.slang
//                                                 ^ punctuation.separator.type.slang
//                                                   ^^^^ support.type.slang
    {
//  ^^ meta.function.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        if (T is IFoo)
//            ^^ keyword.operator.word.slang
        {
            arg.myMethod(1.0);
        }
    }

    int a = myGenericMethod<MyType>(obj);
//          ^^^^^^^^^^^^^^^ meta.function-call.identifier.slang variable.function.slang
//                         ^^^^^^^^ meta.function-call.slang meta.generic.slang
//                         ^ punctuation.definition.generic.begin.slang
//                          ^^^^^^ support.type.slang
//                                ^ punctuation.definition.generic.end.slang
//                                 ^^^^^ meta.function-call.arguments.slang
//                                 ^ punctuation.section.arguments.begin.slang
//                                  ^^^ variable.other.slang
//                                     ^ punctuation.section.arguments.end.slang
//                                      ^ punctuation.terminator.semicolon.slang

    int b = myGenericMethod(obj);
//          ^^^^^^^^^^^^^^^ meta.function-call.identifier.slang variable.function.slang
//                         ^^^^^ meta.function-call.arguments.slang
//                         ^ punctuation.section.arguments.begin.slang
//                          ^^^ variable.other.slang
//                             ^ punctuation.section.arguments.end.slang
//                              ^ punctuation.terminator.semicolon.slang

    void g1<let n : int>() {}

    void g2<let e : MyEnum>() {}

    void g3<let b : bool>() {}

    struct MyType<T, U>
//  ^^^^^^^^^^^^^^^^^^^^ meta.struct.slang
//  ^^^^^^ keyword.declaration.struct.slang
//         ^^^^^^ entity.name.struct.slang
//         @@@@@@ definition
//               ^^^^^^ meta.generic.slang
//               ^ punctuation.definition.generic.begin.slang
//                ^ support.type.slang
//                 ^ punctuation.separator.comma.slang
//                   ^ support.type.slang
//                    ^ punctuation.definition.generic.end.slang
        where T : IFoo, IBar
//      ^^^^^ keyword.other.slang
//            ^ support.type.slang
//              ^ punctuation.separator.type.slang
//                ^^^^ support.type.slang
//                    ^ punctuation.separator.comma.slang
//                      ^^^^ support.type.slang
        where U : IBaz<T>
//      ^^^^^ keyword.other.slang
//            ^ support.type.slang
//              ^ punctuation.separator.type.slang
//                ^^^^ support.type.slang
//                    ^^^ meta.generic.slang
//                    ^ punctuation.definition.generic.begin.slang
//                     ^ support.type.slang
//                      ^ punctuation.definition.generic.end.slang
    {
//  ^^ meta.struct.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
    }

    public struct ReLU<T> : IActivation<T>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct.slang
//  ^^^^^^ storage.modifier.slang
//         ^^^^^^ keyword.declaration.struct.slang
//                ^^^^ entity.name.struct.slang
//                    ^^^ meta.generic.slang
//                    ^ punctuation.definition.generic.begin.slang
//                     ^ support.type.slang
//                      ^ punctuation.definition.generic.end.slang
//                        ^ punctuation.separator.type.slang
//                          ^^^^^^^^^^^ entity.other.inherited-class.slang
//                                     ^ punctuation.definition.generic.begin.slang
//                                      ^ support.type.slang
//                                       ^ punctuation.definition.generic.end.slang
        where T : __BuiltinFloatingPointType
        where T.Differential == T
//      ^^^^^ keyword.other.slang
//                           ^^ keyword.operator.comparison.slang
    {
//  ^^ meta.struct.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
    }

    interface IFoo
    {
        property int count {get; set;}
//      ^^^^^^^^ storage.modifier.slang
//                          ^^^ keyword.other.slang
//                               ^^^ keyword.other.slang
    }

    struct ArrayIterator : IIterator
    {
        uint index;
        __init(int x) { index = x; }
//      ^^^^^^ meta.function.slang keyword.other.slang
//            ^^^^^^^ meta.function.parameters.slang
//            ^ punctuation.section.parameters.begin.slang
//             ^^^ storage.type.slang
//                 ^ variable.parameter.slang
//                  ^ punctuation.section.parameters.end.slang
//                    ^^^^^^^^^^^^^^ meta.function.slang meta.block.slang
        public __subscript(int index) -> T
        {
        }
        ArrayIterator next()
        {
            return ArrayIterator(index + 1);
        }
    }

// FIXME
    public interface IActivation<T>
        where T : __BuiltinFloatingPointType
        where T.Differential == T
    {

    }

    public interface IStaticEncoder<T,
        InArray,
        OutArray
        >
        where T : __BuiltinFloatingPointType
        where T.Differential == T
        where InArray : IArrayAccessor<T>
        where OutArray : IArrayAccessor<T>
    {

    }

// ===[ Control Flow ]==========================================================

    if (someCondition)
//  ^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.if.slang
//  ^^ keyword.control.conditional.if.slang
//     ^^^^^^^^^^^^^^^ meta.parens.slang
    {
//  ^^ meta.statement.conditional.if.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
    }
    else
//  ^^^^^ meta.statement.conditional.else.slang
//  ^^^^ keyword.control.conditional.else.slang
    {
//  ^^ meta.statement.conditional.else.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
    }

    if (let x = getOptInt())
//  ^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.if.slang
//  ^^ keyword.control.conditional.if.slang
//     ^^^^^^^^^^^^^^^^^^^^^ meta.parens.slang
//     ^ punctuation.section.parens.begin.slang
//      ^^^ keyword.declaration.constant.slang
//          ^ variable.other.slang
//            ^ keyword.operator.assignment.slang
//              ^^^^^^^^^ variable.function.slang
//                         ^ punctuation.section.parens.end.slang
    {
//  ^^ meta.statement.conditional.if.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
    }

    switch (expression)
//  ^^^^^^^^^^^^^^^^^^^^ meta.statement.conditional.switch.slang
//  ^^^^^^ keyword.control.conditional.switch.slang
//         ^^^^^^^^^^^^ meta.parens.slang
    {
//  ^^ meta.statement.conditional.switch.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        case "foo":
//      ^^^^ keyword.control.conditional.case.slang
//           ^^^^^ string.quoted.double.slang
//                ^ punctuation.separator.colon.slang
        default:
//      ^^^^^^^ keyword.control.conditional.default.slang
//             ^ punctuation.separator.colon.slang
    }

    __target_switch
//  ^^^^^^^^^^^^^^^ meta.statement.conditional.switch.slang keyword.control.conditional.switch.slang
    {
//  ^^ meta.statement.conditional.switch.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        case spirv:
        case hlsl:
    }

    outer:
//  ^^^^^ entity.name.label.slang
//       ^ punctuation.separator.colon.slang
    for (int i = 0; i < 5; i++)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.for.slang
//  ^^^ keyword.control.loop.for.slang
//      ^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.slang
//      ^ punctuation.section.parens.begin.slang
//       ^^^ storage.type.slang
//           ^ variable.other.slang
//             ^ keyword.operator.assignment.slang
//               ^ constant.numeric.value.slang
//                ^ punctuation.terminator.semicolon.slang
//                  ^ variable.other.slang
//                    ^ keyword.operator.comparison.slang
//                      ^ constant.numeric.value.slang
//                       ^ punctuation.terminator.semicolon.slang
//                         ^ variable.other.slang
//                          ^^ keyword.operator.arithmetic.slang
//                            ^ punctuation.section.parens.end.slang
    {
//  ^^ meta.statement.loop.for.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        inner:
//      ^^^^^ entity.name.label.slang
//           ^ punctuation.separator.colon.slang
        for (int j = 0; j < 10; j++)
        {
            if (someCondition)
                break outer;
//              ^^^^^ keyword.control.flow.break.slang
        }
    }

    while (someCondition)
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.while.slang
//  ^^^^^ keyword.control.loop.while.slang
//        ^^^^^^^^^^^^^^^ meta.parens.slang
//        ^ punctuation.section.parens.begin.slang
//         ^^^^^^^^^^^^^ variable.other.slang
//                      ^ punctuation.section.parens.end.slang
    {
//  ^^ meta.statement.loop.while.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
    }

    do
//  ^^^ meta.statement.do.slang
//  ^^ keyword.control.do.slang
    {
//  ^^ meta.statement.do.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
    }
    while (someCondition);
//  ^^^^^^^^^^^^^^^^^^^^^ meta.statement.loop.while.slang
//  ^^^^^ keyword.control.loop.while.slang
//        ^^^^^^^^^^^^^^^ meta.parens.slang
//        ^ punctuation.section.parens.begin.slang
//         ^^^^^^^^^^^^^ variable.other.slang
//                      ^ punctuation.section.parens.end.slang

    do
//  ^^^ meta.statement.do.slang
//  ^^ keyword.control.do.slang
    {
//  ^^ meta.statement.do.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        let result = try f();
//                   ^^^ keyword.control.exception.try.slang
        printf("Success: %d\n", result);
//      ^^^^^^ support.function.slang
    }
    catch(err: MyError)
//  ^^^^^^^^^^^^^^^^^^^^ meta.statement.exception.catch.slang
//  ^^^^^ keyword.control.exception.catch.slang
//       ^^^^^^^^^^^^^^ meta.parens.slang
//       ^ punctuation.section.parens.begin.slang
//                    ^ punctuation.section.parens.end.slang
    {
//  ^^ meta.statement.exception.catch.slang meta.block.slang
//  ^ punctuation.section.block.begin.slang
        printf("Not good!\n");
    }


    import YourLibrary;
//  ^^^^^^ keyword.control.import.slang
//         ^^^^^^^^^^^ variable.other.slang
//                    ^ punctuation.terminator.semicolon.slang

    __include dir.file_name;
//  ^^^^^^^^^ keyword.control.import.slang
//            ^^^ variable.other.slang
//               ^ punctuation.accessor.dot.slang
//                ^^^^^^^^^ variable.other.member.slang
//                         ^ punctuation.terminator.semicolon.slang

    __include "dir/file-name.slang";
//  ^^^^^^^^^ keyword.control.import.slang
//            ^^^^^^^^^^^^^^^^^^^^^ meta.string.slang string.quoted.double.slang
//                                 ^ punctuation.terminator.semicolon.slang

// ===[ Attributes ]============================================================

    [UnscopedEnum]
//  ^^^^^^^^^^^^^^ meta.annotation.slang
//  ^ punctuation.definition.annotation.begin.slang
//   ^^^^^^^^^^^^ variable.annotation.slang
//               ^ punctuation.definition.annotation.end.slang

    [[vk::binding(0)]]
//  ^^^^^^^^^^^^^^^^^^ meta.annotation.slang - meta.annotation meta.annotation
//  ^^ punctuation.definition.annotation.begin.slang
//    ^^ variable.annotation.slang
//      ^^ punctuation.accessor.double-colon.slang
//        ^^^^^^^ meta.function-call.identifier.slang variable.annotation.slang
//               ^^^ meta.function-call.arguments.slang
//               ^ punctuation.section.arguments.begin.slang
//                ^ constant.numeric.value.slang
//                 ^ punctuation.section.arguments.end.slang
//                  ^^ punctuation.definition.annotation.end.slang

    [mutating] void inc(float4 val) { x += val; }
//  ^^^^^^^^^^ meta.annotation.slang
//  ^ punctuation.definition.annotation.begin.slang
//   ^^^^^^^^ variable.annotation.slang
//           ^ punctuation.definition.annotation.end.slang
//             ^^^^^^^^ meta.function.slang
//             ^^^^ storage.type.slang
//                  ^^^ entity.name.function.slang
//                  @@@ definition
//                     ^^^^^^^^^^^^ meta.function.parameters.slang
//                     ^ punctuation.section.parameters.begin.slang
//                      ^^^^^^ storage.type.slang
//                             ^^^ variable.parameter.slang
//                                ^ punctuation.section.parameters.end.slang

// ===[ Variables ]=============================================================

    var a = 1;
//  ^^^ keyword.declaration.variable.slang
//      ^ variable.other.slang
//        ^ keyword.operator.assignment.slang
//          ^ constant.numeric.value.slang
//           ^ punctuation.terminator.semicolon.slang

    var a : int = 1;
//  ^^^ keyword.declaration.variable.slang
//      ^ variable.other.slang
//        ^ punctuation.separator.type.slang
//          ^^^ storage.type.slang
//              ^ keyword.operator.assignment.slang
//                ^ constant.numeric.value.slang
//                 ^ punctuation.terminator.semicolon.slang

    let a = 1;
//  ^^^ keyword.declaration.constant.slang
//      ^ variable.other.slang
//        ^ keyword.operator.assignment.slang
//          ^ constant.numeric.value.slang
//           ^ punctuation.terminator.semicolon.slang

    let a : int = 1;
//  ^^^ keyword.declaration.constant.slang
//      ^ variable.other.slang
//        ^ punctuation.separator.type.slang
//          ^^^ storage.type.slang
//              ^ keyword.operator.assignment.slang
//                ^ constant.numeric.value.slang
//                 ^ punctuation.terminator.semicolon.slang

    float a;
//  ^^^^^ storage.type.slang
//        ^ variable.other.slang
//         ^ punctuation.terminator.semicolon.slang

    const int b = 2;
//  ^^^^^ storage.modifier.slang
//        ^^^ storage.type.slang
//            ^ variable.other.slang
//              ^ keyword.operator.assignment.slang
//                ^ constant.numeric.value.slang
//                 ^ punctuation.terminator.semicolon.slang

    static int c = 3;
//  ^^^^^^ storage.modifier.slang
//         ^^^ storage.type.slang
//             ^ variable.other.slang
//               ^ keyword.operator.assignment.slang
//                 ^ constant.numeric.value.slang
//                  ^ punctuation.terminator.semicolon.slang

    public static const int d = 4;
//  ^^^^^^ storage.modifier.slang
//         ^^^^^^ storage.modifier.slang
//                ^^^^^ storage.modifier.slang
//                      ^^^ storage.type.slang
//                          ^ variable.other.slang
//                            ^ keyword.operator.assignment.slang
//                              ^ constant.numeric.value.slang
//                               ^ punctuation.terminator.semicolon.slang

    uniform float scaleFactor;
//  ^^^^^^^ storage.modifier.slang
//          ^^^^^ storage.type.slang
//                ^^^^^^^^^^^ variable.other.slang
//                           ^ punctuation.terminator.semicolon.slang

    Texture2D textures[128];
//  ^^^^^^^^^ support.type.slang
//            ^^^^^^^^ variable.other.slang
//                    ^^^^^ meta.brackets.slang
//                    ^ punctuation.section.brackets.begin.slang
//                     ^^^ constant.numeric.value.slang
//                        ^ punctuation.section.brackets.end.slang
//                         ^ punctuation.terminator.semicolon.slang

    MyType a = MyType(1, 2);
//  ^^^^^^ support.type.slang
//         ^ variable.other.slang
//           ^ keyword.operator.assignment.slang
//             ^^^^^^ meta.function-call.identifier.slang variable.function.slang
//                   ^^^^^^ meta.function-call.arguments.slang
//                   ^ punctuation.section.arguments.begin.slang
//                        ^ punctuation.section.arguments.end.slang
//                         ^ punctuation.terminator.semicolon.slang

    MyType a = {1, 2};
//  ^^^^^^ support.type.slang
//         ^ variable.other.slang
//           ^ keyword.operator.assignment.slang
//             ^^^^^^ meta.block.slang
//             ^ punctuation.section.block.begin.slang
//              ^ constant.numeric.value.slang
//               ^ punctuation.separator.comma.slang
//                 ^ constant.numeric.value.slang
//                  ^ punctuation.section.block.end.slang
//                   ^ punctuation.terminator.semicolon.slang

    MyType *ptr;
//  ^^^^^^ support.type.slang
//         ^ keyword.operator.arithmetic.slang
//          ^^^ variable.other.slang
//             ^ punctuation.terminator.semicolon.slang

// FIXME: function call
    Tuple<int, float, bool> t0 = Tuple<int, float, bool>(5, 2.0f, false);
//  ^^^^^ support.type.slang
//       ^^^^^^^^^^^^^^^^^^ meta.generic.slang
//       ^ punctuation.definition.generic.begin.slang
//        ^^^ storage.type.slang
//           ^ punctuation.separator.comma.slang
//             ^^^^^ storage.type.slang
//                  ^ punctuation.separator.comma.slang
//                    ^^^^ storage.type.slang
//                        ^ punctuation.definition.generic.end.slang
//                          ^^ variable.other.slang
//                             ^ keyword.operator.assignment.slang
//                               ^^^^^ support.type.slang
//                                    ^^^^^^^^^^^^^^^^^^ meta.generic.slang
//                                    ^ punctuation.definition.generic.begin.slang
//                                     ^^^ storage.type.slang
//                                        ^ punctuation.separator.comma.slang
//                                          ^^^^^ storage.type.slang
//                                               ^ punctuation.separator.comma.slang
//                                                 ^^^^ storage.type.slang
//                                                     ^ punctuation.definition.generic.end.slang

// FIXME: use function call or storage.type in a consistent way
    float3 up = abs(shading.normal.y) < 0.999f ? float3(0.0f, 1.0f, 0.0f) : float3(1.0f, 0.0f, 0.0f);

    structValue.someField
//  ^^^^^^^^^^^ variable.other.slang
//             ^ punctuation.accessor.dot.slang
//              ^^^^^^^^^ variable.other.member.slang

    structValue.
//  ^^^^^^^^^^^ variable.other.slang
//             ^ punctuation.accessor.dot.slang

    MyEnumType.FirstCase
//  ^^^^^^^^^^ variable.other.slang
//            ^ punctuation.accessor.dot.slang
//             ^^^^^^^^^ variable.other.member.slang

    uint rayFlags = RAY_FLAG_FORCE_OPAQUE;
//                  ^^^^^^^^^^^^^^^^^^^^^ support.constant.slang

// ===[ Lambda Expressions ]====================================================

    (int x, int y) => x + y
//  ^^^^^^^^^^^^^^ meta.function.parameters.slang
//  ^ punctuation.section.parameters.begin.slang
//   ^^^ storage.type.slang
//       ^ variable.parameter.slang
//        ^ punctuation.separator.parameters.slang
//          ^^^ storage.type.slang
//              ^ variable.parameter.slang
//               ^ punctuation.section.parameters.end.slang
//                 ^^ keyword.operator.arrow.slang
//                    ^ variable.other.slang
//                      ^ keyword.operator.arithmetic.slang
//                        ^ variable.other.slang

    (float x) => (float)(x * sin(c))
//  ^^^^^^^^^ meta.function.parameters.slang
//  ^ punctuation.section.parameters.begin.slang
//   ^^^^^ storage.type.slang
//         ^ variable.parameter.slang
//          ^ punctuation.section.parameters.end.slang
//            ^^ keyword.operator.arrow.slang
//               ^^^^^^^^^^^^^^^^^^^ meta.parens.slang
//               ^ punctuation.section.parens.begin.slang
//                ^^^^^ storage.type.slang
//                     ^ punctuation.section.parens.end.slang
//                      ^ punctuation.section.parens.begin.slang
//                       ^ variable.other.slang
//                         ^ keyword.operator.arithmetic.slang
//                           ^^^ meta.function-call.identifier.slang support.function.slang
//                              ^^^ meta.function-call.arguments.slang
//                              ^ punctuation.section.arguments.begin.slang
//                               ^ variable.other.slang
//                                ^ punctuation.section.arguments.end.slang
//                                 ^ punctuation.section.parens.end.slang

// ===[ Subscripts ]============================================================

    a[i]
//  ^ variable.other.slang
//   ^^^ meta.brackets.slang
//   ^ punctuation.section.brackets.begin.slang
//    ^ variable.other.slang
//     ^ punctuation.section.brackets.end.slang

    a[
//  ^ variable.other.slang
//   ^^ meta.brackets.slang
//   ^ punctuation.section.brackets.begin.slang
        i
//      ^ variable.other.slang
    ]
//  ^ meta.brackets.slang punctuation.section.brackets.end.slang

// ===[ Function Calls ]========================================================

    sin
//  ^^^ support.function.slang - meta.function-call

    sin(a)
//  ^^^ meta.function-call.identifier.slang support.function.slang
//     ^^^ meta.function-call.arguments.slang
//     ^ punctuation.section.arguments.begin.slang
//      ^ variable.other.slang
//       ^ punctuation.section.arguments.end.slang

    foo(a)
//  ^^^ meta.function-call.identifier.slang variable.function.slang
//     ^^^ meta.function-call.arguments.slang
//     ^ punctuation.section.arguments.begin.slang
//      ^ variable.other.slang
//       ^ punctuation.section.arguments.end.slang

    float4 myPackedVector = reinterpret<float4>(myVal);
//                          ^^^^^^^^^^^ meta.function-call.identifier.slang support.function.slang
//                                     ^^^^^^^^ meta.function-call.slang meta.generic.slang
//                                     ^ punctuation.definition.generic.begin.slang
//                                      ^^^^^^ storage.type.slang
//                                            ^ punctuation.definition.generic.end.slang
//                                             ^^^^^^^ meta.function-call.arguments.slang
//                                             ^ punctuation.section.arguments.begin.slang
//                                              ^^^^^ variable.other.slang
//                                                   ^ punctuation.section.arguments.end.slang
//                                                    ^ punctuation.terminator.semicolon.slang

// FIXME
    bit_cast<half*>(addr.getBuffer())
