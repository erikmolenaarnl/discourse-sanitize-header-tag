export function setup(helper) {
  helper.registerOptions((opts, siteSettings) => {
    opts.features["discourse-sanitize-header-tag"] = true;
  });

  helper.registerPlugin(md => {
    md.block.ruler.disable(["heading", "lheading"]);
  });
}
