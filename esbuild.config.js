const esbuild = require('esbuild');

esbuild.build({
  entryPoints: ['./app/javascript/packs/application.js'],
  bundle: true,
  outfile: './public/assets/application.js',
}).catch(() => process.exit(1));
