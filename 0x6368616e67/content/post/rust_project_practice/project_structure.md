---
title: "Rust 工程结构"
date: 2022-04-16T22:07:36+08:00


description: "repo目录下，应该有rustfmt.toml用来控制rust的格式化,将库核心放一个目录，然后在辅之 bin目录，test目录，examples目录等"
---

# 目录和文件

repo目录下，应该有rustfmt.toml用来控制rust的格式化。

然后在Cargo.toml中，以workspace的形式将其他子目录纳入管理：

	[workspace]
	members = [
		"examples",
		"benches",
		"jsonrpsee",
		"tests",
		"proc-macros",
	]

这里将库核心放一个目录，然后在辅之 bin目录，test目录，examples目录等

