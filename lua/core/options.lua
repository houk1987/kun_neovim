-- 设置基本选项
local options={
	nu=true,
	rnu=true,
	ts=4,
	sts=4,
	sw=4,
	cul=true,
	ignorecase=true,
	showmode=false,
	mouse=a
}

for k,v in pairs(options)do
	vim.opt[k]=v
end
