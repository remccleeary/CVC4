(benchmark fuzzsmt
:logic QF_AX
:status unsat
:extrafuns ((v0 Array))
:extrafuns ((v1 Array))
:extrafuns ((v2 Index))
:extrafuns ((v3 Index))
:extrafuns ((v4 Element))
:extrafuns ((v5 Element))
:extrafuns ((v6 Element))
:extrafuns ((v7 Element))
:extrafuns ((v8 Element))
:formula
(let (?e9 (select v0 v3))
(flet ($e10 (= v0 v1))
(flet ($e11 (distinct v2 v2))
(flet ($e12 (= v3 v2))
(flet ($e13 (distinct ?e9 v5))
(flet ($e14 (= ?e9 v6))
(flet ($e15 (= ?e9 ?e9))
(flet ($e16 (= v4 v8))
(flet ($e17 (= v4 v8))
(flet ($e18 (= v8 v6))
(flet ($e19 (= ?e9 v5))
(flet ($e20 (distinct v7 v5))
(let (?e21 (ite $e20 v0 v0))
(let (?e22 (ite $e20 ?e21 ?e21))
(let (?e23 (ite $e11 v1 v0))
(let (?e24 (ite $e17 ?e22 ?e22))
(let (?e25 (ite $e10 ?e22 ?e23))
(let (?e26 (ite $e17 ?e24 v0))
(let (?e27 (ite $e16 v0 v1))
(let (?e28 (ite $e13 v1 ?e22))
(let (?e29 (ite $e18 ?e26 ?e26))
(let (?e30 (ite $e12 ?e24 ?e28))
(let (?e31 (ite $e19 ?e27 ?e28))
(let (?e32 (ite $e15 ?e29 ?e25))
(let (?e33 (ite $e14 ?e26 ?e26))
(let (?e34 (ite $e12 v2 v3))
(let (?e35 (ite $e13 ?e34 ?e34))
(let (?e36 (ite $e16 v3 v3))
(let (?e37 (ite $e10 ?e34 ?e34))
(let (?e38 (ite $e11 ?e35 v2))
(let (?e39 (ite $e19 ?e34 ?e37))
(let (?e40 (ite $e14 ?e35 ?e34))
(let (?e41 (ite $e20 ?e40 v3))
(let (?e42 (ite $e17 ?e39 ?e36))
(let (?e43 (ite $e20 ?e40 v2))
(let (?e44 (ite $e15 ?e43 v2))
(let (?e45 (ite $e18 ?e43 v2))
(let (?e46 (ite $e11 v6 v7))
(let (?e47 (ite $e19 v5 v6))
(let (?e48 (ite $e10 v8 v5))
(let (?e49 (ite $e11 v6 ?e48))
(let (?e50 (ite $e15 ?e9 ?e49))
(let (?e51 (ite $e15 v4 v4))
(let (?e52 (ite $e12 ?e50 ?e47))
(let (?e53 (ite $e13 v6 ?e51))
(let (?e54 (ite $e18 ?e49 ?e46))
(let (?e55 (ite $e20 ?e9 ?e50))
(let (?e56 (ite $e17 ?e53 ?e52))
(let (?e57 (ite $e14 ?e47 ?e9))
(let (?e58 (ite $e16 ?e48 ?e52))
(let (?e59 (select ?e23 ?e39))
(flet ($e60 (distinct v1 ?e22))
(flet ($e61 (= ?e25 ?e25))
(flet ($e62 (distinct ?e32 ?e27))
(flet ($e63 (distinct ?e31 ?e25))
(flet ($e64 (distinct ?e22 ?e28))
(flet ($e65 (= v1 ?e28))
(flet ($e66 (distinct ?e25 ?e28))
(flet ($e67 (= v1 ?e25))
(flet ($e68 (= ?e30 v0))
(flet ($e69 (distinct ?e25 ?e23))
(flet ($e70 (distinct ?e21 ?e24))
(flet ($e71 (= ?e30 ?e25))
(flet ($e72 (distinct ?e21 v0))
(flet ($e73 (distinct v1 ?e29))
(flet ($e74 (distinct ?e32 ?e31))
(flet ($e75 (distinct ?e25 ?e23))
(flet ($e76 (= ?e32 ?e21))
(flet ($e77 (distinct ?e32 ?e31))
(flet ($e78 (distinct ?e28 ?e24))
(flet ($e79 (distinct v1 ?e26))
(flet ($e80 (distinct v1 ?e23))
(flet ($e81 (distinct v1 v0))
(flet ($e82 (= ?e29 v1))
(flet ($e83 (distinct ?e29 ?e22))
(flet ($e84 (distinct v0 ?e29))
(flet ($e85 (= ?e28 ?e27))
(flet ($e86 (distinct ?e25 ?e21))
(flet ($e87 (distinct ?e28 ?e25))
(flet ($e88 (= ?e29 ?e21))
(flet ($e89 (= ?e31 ?e33))
(flet ($e90 (distinct ?e45 ?e35))
(flet ($e91 (= ?e37 v3))
(flet ($e92 (distinct ?e43 ?e35))
(flet ($e93 (distinct v2 v3))
(flet ($e94 (distinct ?e40 ?e45))
(flet ($e95 (distinct ?e38 v3))
(flet ($e96 (distinct ?e43 ?e37))
(flet ($e97 (= ?e36 ?e44))
(flet ($e98 (= ?e39 ?e36))
(flet ($e99 (distinct ?e38 ?e44))
(flet ($e100 (distinct ?e44 ?e34))
(flet ($e101 (distinct ?e43 ?e40))
(flet ($e102 (distinct v2 v3))
(flet ($e103 (= ?e43 ?e41))
(flet ($e104 (= ?e38 ?e40))
(flet ($e105 (= v3 ?e37))
(flet ($e106 (= v2 ?e44))
(flet ($e107 (distinct ?e34 ?e45))
(flet ($e108 (distinct ?e39 ?e37))
(flet ($e109 (= ?e36 ?e38))
(flet ($e110 (= v3 ?e38))
(flet ($e111 (= ?e39 v3))
(flet ($e112 (distinct ?e44 ?e45))
(flet ($e113 (distinct ?e41 ?e40))
(flet ($e114 (= ?e38 ?e40))
(flet ($e115 (distinct ?e44 ?e38))
(flet ($e116 (distinct ?e37 ?e44))
(flet ($e117 (distinct ?e34 ?e39))
(flet ($e118 (distinct ?e37 ?e40))
(flet ($e119 (distinct ?e37 ?e36))
(flet ($e120 (distinct ?e45 ?e42))
(flet ($e121 (distinct ?e58 ?e48))
(flet ($e122 (distinct ?e9 v7))
(flet ($e123 (distinct v7 v4))
(flet ($e124 (= ?e59 ?e59))
(flet ($e125 (= ?e46 ?e49))
(flet ($e126 (distinct ?e58 ?e48))
(flet ($e127 (distinct ?e53 ?e46))
(flet ($e128 (distinct v4 ?e47))
(flet ($e129 (distinct v4 v5))
(flet ($e130 (= v7 ?e49))
(flet ($e131 (distinct v8 v6))
(flet ($e132 (= ?e48 ?e51))
(flet ($e133 (distinct ?e51 ?e47))
(flet ($e134 (= ?e55 ?e49))
(flet ($e135 (= ?e54 ?e58))
(flet ($e136 (distinct ?e47 ?e57))
(flet ($e137 (= ?e48 v4))
(flet ($e138 (= ?e48 ?e55))
(flet ($e139 (distinct v8 ?e48))
(flet ($e140 (distinct ?e55 v7))
(flet ($e141 (= v4 v6))
(flet ($e142 (distinct ?e56 ?e53))
(flet ($e143 (distinct ?e58 ?e49))
(flet ($e144 (distinct ?e50 v5))
(flet ($e145 (distinct ?e58 ?e47))
(flet ($e146 (distinct v8 ?e56))
(flet ($e147 (= ?e50 ?e52))
(flet ($e148 (xor $e19 $e117))
(flet ($e149 (or $e106 $e64))
(flet ($e150 (or $e74 $e14))
(flet ($e151 (or $e127 $e110))
(flet ($e152 (iff $e140 $e113))
(flet ($e153 (implies $e71 $e144))
(flet ($e154 (iff $e142 $e85))
(flet ($e155 (implies $e13 $e13))
(flet ($e156 (not $e118))
(flet ($e157 (if_then_else $e123 $e62 $e95))
(flet ($e158 (implies $e63 $e101))
(flet ($e159 (iff $e77 $e125))
(flet ($e160 (or $e73 $e80))
(flet ($e161 (if_then_else $e143 $e99 $e107))
(flet ($e162 (iff $e72 $e102))
(flet ($e163 (or $e100 $e126))
(flet ($e164 (or $e91 $e162))
(flet ($e165 (iff $e11 $e75))
(flet ($e166 (and $e84 $e158))
(flet ($e167 (or $e16 $e60))
(flet ($e168 (implies $e149 $e137))
(flet ($e169 (not $e109))
(flet ($e170 (and $e61 $e145))
(flet ($e171 (and $e121 $e68))
(flet ($e172 (and $e120 $e124))
(flet ($e173 (and $e165 $e90))
(flet ($e174 (implies $e168 $e166))
(flet ($e175 (or $e174 $e173))
(flet ($e176 (xor $e114 $e105))
(flet ($e177 (xor $e97 $e66))
(flet ($e178 (xor $e128 $e122))
(flet ($e179 (xor $e167 $e176))
(flet ($e180 (iff $e177 $e108))
(flet ($e181 (not $e159))
(flet ($e182 (iff $e178 $e138))
(flet ($e183 (or $e98 $e169))
(flet ($e184 (iff $e87 $e83))
(flet ($e185 (not $e12))
(flet ($e186 (and $e78 $e151))
(flet ($e187 (not $e69))
(flet ($e188 (xor $e94 $e88))
(flet ($e189 (and $e81 $e141))
(flet ($e190 (or $e96 $e184))
(flet ($e191 (iff $e116 $e103))
(flet ($e192 (or $e147 $e136))
(flet ($e193 (if_then_else $e179 $e89 $e139))
(flet ($e194 (implies $e193 $e134))
(flet ($e195 (iff $e191 $e10))
(flet ($e196 (iff $e152 $e190))
(flet ($e197 (iff $e163 $e161))
(flet ($e198 (iff $e170 $e129))
(flet ($e199 (or $e195 $e67))
(flet ($e200 (not $e164))
(flet ($e201 (and $e104 $e192))
(flet ($e202 (iff $e65 $e150))
(flet ($e203 (xor $e200 $e70))
(flet ($e204 (and $e183 $e79))
(flet ($e205 (or $e185 $e172))
(flet ($e206 (not $e18))
(flet ($e207 (implies $e181 $e198))
(flet ($e208 (not $e189))
(flet ($e209 (xor $e171 $e203))
(flet ($e210 (not $e201))
(flet ($e211 (implies $e196 $e206))
(flet ($e212 (iff $e211 $e182))
(flet ($e213 (implies $e155 $e132))
(flet ($e214 (if_then_else $e199 $e205 $e148))
(flet ($e215 (xor $e154 $e86))
(flet ($e216 (not $e119))
(flet ($e217 (implies $e20 $e133))
(flet ($e218 (if_then_else $e215 $e180 $e15))
(flet ($e219 (implies $e197 $e112))
(flet ($e220 (implies $e156 $e115))
(flet ($e221 (and $e204 $e212))
(flet ($e222 (if_then_else $e220 $e214 $e209))
(flet ($e223 (implies $e218 $e213))
(flet ($e224 (if_then_else $e93 $e221 $e130))
(flet ($e225 (and $e223 $e222))
(flet ($e226 (xor $e202 $e17))
(flet ($e227 (not $e225))
(flet ($e228 (if_then_else $e208 $e210 $e207))
(flet ($e229 (or $e135 $e131))
(flet ($e230 (not $e157))
(flet ($e231 (and $e216 $e216))
(flet ($e232 (or $e229 $e82))
(flet ($e233 (implies $e187 $e160))
(flet ($e234 (implies $e76 $e219))
(flet ($e235 (not $e186))
(flet ($e236 (xor $e230 $e188))
(flet ($e237 (xor $e146 $e227))
(flet ($e238 (implies $e235 $e235))
(flet ($e239 (or $e92 $e232))
(flet ($e240 (implies $e236 $e228))
(flet ($e241 (not $e217))
(flet ($e242 (or $e237 $e238))
(flet ($e243 (implies $e233 $e241))
(flet ($e244 (iff $e175 $e224))
(flet ($e245 (if_then_else $e239 $e242 $e244))
(flet ($e246 (xor $e153 $e234))
(flet ($e247 (if_then_else $e194 $e246 $e226))
(flet ($e248 (implies $e247 $e247))
(flet ($e249 (or $e240 $e245))
(flet ($e250 (xor $e248 $e111))
(flet ($e251 (implies $e249 $e249))
(flet ($e252 (iff $e243 $e243))
(flet ($e253 (xor $e251 $e251))
(flet ($e254 (iff $e253 $e253))
(flet ($e255 (if_then_else $e250 $e254 $e254))
(flet ($e256 (iff $e255 $e252))
(flet ($e257 (xor $e231 $e256))
$e257
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

