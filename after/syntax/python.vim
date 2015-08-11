" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear pythonOperator

syntax match pythonOperator "\<is\>" conceal cchar=≡
syntax match pythonOperator "\<is not\>" conceal cchar=≢
syntax match pyNiceOperator "\<in\>" conceal cchar=∈
syntax match pyNiceOperator "\<or\>" conceal cchar=∨
syntax match pyNiceOperator "\<and\>" conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match pyNiceOperator "\%(is \)\@<!\<not\%( \|\>\)" conceal cchar=¬
syntax match pyNiceOperator "\<not in\>" conceal cchar=∉
syntax match pyNiceOperator "<=" conceal cchar=≤
syntax match pyNiceOperator ">=" conceal cchar=≥
" only conceal “==” if alone, to avoid concealing SCM conflict markers
" syntax match pyNiceOperator "=\@<!===\@!" conceal cchar=≡
syntax match pyNiceOperator "!=" conceal cchar=≠

syntax keyword pyNiceOperator sum conceal cchar=∑
syntax keyword pyNiceOperator prod conceal cchar=∏
syntax keyword pyNiceBuiltin all conceal cchar=∀
syntax keyword pyNiceBuiltin any conceal cchar=∃
syntax match pyNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match pyNiceKeyword "\<\%(math\.\|constant\.\|scipy\.constant\.\|\)\?pi\>" conceal cchar=π
syntax match pyNiceOperator "\<\%(math\.\|\)ceil\>" conceal cchar=⌈
syntax match pyNiceOperator "\<\%(math\.\|\)floor\>" conceal cchar=⌊
syntax match pyNiceOperator "\<\%(constant\.\|scipy\.constant\.\|\)hbar\>" conceal cchar=ℏ

syntax keyword pyNiceStatement int conceal cchar=ℤ
syntax keyword pyNiceStatement float conceal cchar=ℝ
syntax keyword pyNiceStatement complex conceal cchar=ℂ

syntax match pyNiceOperator " \* " conceal cchar=∙
syntax match pyNiceOperator " / " conceal cchar=÷
" The following are special cases where it /may/ be okay to ignore PEP8
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)0\>" conceal cchar=⁰
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)1\>" conceal cchar=¹
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)2\>" conceal cchar=²
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)3\>" conceal cchar=³
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)4\>" conceal cchar=⁴
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)5\>" conceal cchar=⁵
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)6\>" conceal cchar=⁶
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)7\>" conceal cchar=⁷
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)8\>" conceal cchar=⁸
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)9\>" conceal cchar=⁹
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)a\>" conceal cchar=ᵃ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)b\>" conceal cchar=ᵇ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)c\>" conceal cchar=ᶜ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)d\>" conceal cchar=ᵈ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)e\>" conceal cchar=ᵉ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)f\>" conceal cchar=ᶠ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)g\>" conceal cchar=ᵍ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)h\>" conceal cchar=ʰ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)i\>" conceal cchar=ⁱ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)j\>" conceal cchar=ʲ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)k\>" conceal cchar=ᵏ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)l\>" conceal cchar=ˡ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)m\>" conceal cchar=ᵐ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)n\>" conceal cchar=ⁿ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)o\>" conceal cchar=ᵒ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)p\>" conceal cchar=ᵖ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)r\>" conceal cchar=ʳ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)s\>" conceal cchar=ˢ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)t\>" conceal cchar=ᵗ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)u\>" conceal cchar=ᵘ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)v\>" conceal cchar=ᵛ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)w\>" conceal cchar=ʷ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)x\>" conceal cchar=ˣ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)y\>" conceal cchar=ʸ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)z\>" conceal cchar=ᶻ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)A\>" conceal cchar=ᴬ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)B\>" conceal cchar=ᴮ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)D\>" conceal cchar=ᴰ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)E\>" conceal cchar=ᴱ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)G\>" conceal cchar=ᴳ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)H\>" conceal cchar=ᴴ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)I\>" conceal cchar=ᴵ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)J\>" conceal cchar=ᴶ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)K\>" conceal cchar=ᴷ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)L\>" conceal cchar=ᴸ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)M\>" conceal cchar=ᴹ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)N\>" conceal cchar=ᴺ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)O\>" conceal cchar=ᴼ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)P\>" conceal cchar=ᴾ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)R\>" conceal cchar=ᴿ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)T\>" conceal cchar=ᵀ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)U\>" conceal cchar=ᵁ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)V\>" conceal cchar=ⱽ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)W\>" conceal cchar=ᵂ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)alpha\>" conceal cchar=ᵅ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)beta\>" conceal cchar=ᵝ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)gamma\>" conceal cchar=ᵞ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)delta\>" conceal cchar=ᵟ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)epsilon\>" conceal cchar=ᵋ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)theta\>" conceal cchar=ᶿ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)iota\>" conceal cchar=ᶥ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)Phi\>" conceal cchar=ᶲ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)phi\>" conceal cchar=ᵠ
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)chi\>" conceal cchar=ᵡ

" Your background, and taste, may affect whether you like # for cardinality ;)
syntax keyword pyNiceBuiltin len conceal cchar=#

syntax keyword pyNiceStatement lambda conceal cchar=λ
syntax keyword pyNiceStatement None conceal cchar=∅
syntax keyword pyNiceStatement return conceal cchar=⏎
syntax keyword pyNiceRepeat for conceal cchar=∀

hi link pyNiceOperator Operator
hi link pyNiceStatement Statement
hi link pyNiceKeyword Keyword
hi link pyNiceBuiltin Builtin
hi! link Conceal Operator

setlocal conceallevel=1
