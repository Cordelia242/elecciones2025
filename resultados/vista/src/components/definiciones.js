import { format } from "npm:d3";
import { FileAttachment } from "observablehq:stdlib";

export const partidos = {
  AP: {
    foto: await FileAttachment(`../imagenes/ap.webp`).url(),
    colores: ["#00b5ee", "#4f7d35"],
  },
  "LYP-ADN": {
    foto: await FileAttachment(`../imagenes/lyp-adn.webp`).url(),
    colores: ["#a91521", "#2f2f30"],
  },
  "APB-SUMATE": {
    foto: await FileAttachment(`../imagenes/apb-sumate.webp`).url(),
    colores: ["#430956", "#cb010d"],
  },
  LIBRE: {
    foto: await FileAttachment(`../imagenes/libre.webp`).url(),
    colores: ["#f50303", "#1d65c5"],
  },
  FP: {
    foto: await FileAttachment(`../imagenes/fp.webp`).url(),
    colores: ["#1897d5", "#59c4f0"],
  },
  "MAS-IPSP": {
    foto: await FileAttachment(`../imagenes/mas-ipsp.webp`).url(),
    colores: ["#143a83", "#585755"],
  },
  UNIDAD: {
    foto: await FileAttachment(`../imagenes/unidad.webp`).url(),
    colores: ["#feb447", "#083c6b"],
  },
  PDC: {
    foto: await FileAttachment(`../imagenes/pdc.webp`).url(),
    colores: ["#05636b", "#dd0710"],
  },
};

export const formatos = {
  fecha: new Intl.DateTimeFormat("es", {
    year: "numeric",
    month: "long",
    day: "numeric",
    hour: "numeric",
    minute: "numeric",
    timeZone: "UTC",
  }),
  porcentaje: format(".1%"),
};
