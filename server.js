
const express = require('express');
const glob = require('glob');
const yargs = require('yargs');
const path = require('path');

const root = yargs.argv.root || "." ;
const host = yargs.argv.host || "0.0.0.0" ;
const port = yargs.argv.port || 8080 ;



let app = express();
app.use([
		...glob.sync('**/*.css', {cwd: root}),
		...glob.sync('**/*.js', {cwd: root}),
		...glob.sync('**/*.html', {cwd: root}),

	].map(
		(file) => express.static(path.join(root, file))
		)
	);

app.listen(port, host);
