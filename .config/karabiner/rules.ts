import fs from "fs";
import { KarabinerRules } from "./types";
import { createHyperSubLayers, app, open } from "./utils";

const rules: KarabinerRules[] = [

  ...createHyperSubLayers({


    h: {
      to: [{ key_code: "b", modifiers: ["left_control"] },
      {
        "key_code": "0"
      }],
    },

    t: {
      to: [{ key_code: "b", modifiers: ["left_control"] },
      {
        "key_code": "1"
      }],
    },
    s: {
      to: [{ key_code: "b", modifiers: ["left_control"] },
      {
        "key_code": "2"
      }],
    }, n: {
      to: [{ key_code: "b", modifiers: ["left_control"] },
      {
        "key_code": "3"
      }],
    },
    m: {
      to: [{ key_code: "b", modifiers: ["left_control"] },
      {
        "key_code": "s"
      }],
    },
    r: {
      to: [{ key_code: "b", modifiers: ["left_control"] },
      {
        "key_code": ")"
      }],
    },
    p: {
      to: [{ key_code: "b", modifiers: ["left_control"] },
      {
        "key_code": "("
      }],
    },
    u: {
      to: [{ key_code: "b", modifiers: ["left_control"] },
      {
        "key_code": "U"
      }],
    },
    d: {
      to: [{ key_code: "b", modifiers: ["left_control"] },
      {
        "key_code": "D"
      }],
    },

    e: app("Arc"),
    a: app("Ghostty"),
    c: app("YouTube Music"),
    i: app("Slack"),
    k: app("Visual Studio Code"),
    l: open("btt://execute_assigned_actions_for_trigger/?uuid=935D1870-22C3-4E40-ADDA-728BE1C7E70C"),


    // All the following combinations require the "hyper" key as well
  })
];

fs.writeFileSync(
  "karabiner.json",
  JSON.stringify(
    {
      global: {
        show_in_menu_bar: false,
      },
      profiles: [
        {
          complex_modifications: {
            rules,
          },
          name: "Default",
          selected: true,
          virtual_hid_keyboard: { keyboard_type_v2: "ansi" },
        },
      ],
    },
    null,
    2
  )
);
