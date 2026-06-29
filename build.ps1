# 编译tex的脚本，可选编译文件，默认编译chapter.tex，输出至./build/
param(
    [string]$FileName = "chapter",
    [string]$OutDir = "build"
)

$LatexMk = "D:\Program Files\texlive\2026\bin\windows\latexmk.exe"

& $LatexMk `
  -synctex=1 `
  -interaction=nonstopmode `
  -xelatex `
  -file-line-error `
  -outdir="${OutDir}" `
  "${FileName}"    # 不带 .tex 后缀，latexmk 会自动补全