# Chart Examples for SRB Workspaces

With [SRB Workspaces](https://www.srb.at/produkte/) release 2303 the following chart types are supported:

![grafik](https://user-images.githubusercontent.com/5223668/220046912-0845f1e5-41d8-4916-afc1-5671e2036d2c.png)

Implementation examples can be found in [src](src/) folder.

## Details
| Chart Type | Description | Example Class | Color Schema |
|--|--|--|--|
| Stacked Bar | This chart type can display multiple values, taken from the data service. For each row in the respone of the dataservice, a bar is generated. The displayed value property can be used to display a real value ( no percentage ) for each bar. | [zcl_workspaces_stacked_bar](src/zcl_workspaces_stacked_bar.clas.abap) | `sap.m.ValueColor`, `sap.ui.core.CSSColor` |
| Column | This chart type can display multiple values, taken from the data service. For each row in the respone of the dataservice, a bar is generated. The displayed value property can be used to display a real value ( no percentage ) for each bar. | [zcl_workspaces_column](src/zcl_workspaces_column.clas.abap) | `sap.m.ValueColor`, (`sap.ui.core.CSSColor`) |
| Comparison | This chart type can display multiple values, taken from the data service. For each row in the respone of the dataservice, a bar is generated. The displayed value property can be used to display a real value ( no percentage ) for each bar. | [zcl_workspaces_comparison](src/zcl_workspaces_comparison.clas.abap) | `sap.m.ValueColor`, `sap.ui.core.CSSColor` |
| Radial | This chart type can display only one data value, taken from the data service. Only one returned row is used. The returned value has to be a percentage value between 0 and 100 percent  | [zcl_workspaces_radial](src/zcl_workspaces_radial.clas.abap) | `sap.m.ValueColor`, `sap.ui.core.CSSColor` |
| Harvey Ball | This chart type can display only one data value, taken from the data service. Only one returned row is used. The returned value has to be a percentage value between 0 and 100 percent. The label property can be used to display a real value ( no percentage ) beside the ball. | [zcl_workspaces_harvey_ball](src/zcl_workspaces_harvey_ball.clas.abap ) | `sap.m.ValueColor`, `sap.ui.core.CSSColor` |
| Progress | This chart type can display only one data value, taken from the data service. Only one returned row is used. The returned value has to be a percentage value between 0 and 100 percent. The displayed value property can be used to display a real value ( no percentage ) for the progress bar. | [zcl_workspaces_progress](src/zcl_workspaces_progress.clas.abap ) | `sap.ui.core.ValueState` |
