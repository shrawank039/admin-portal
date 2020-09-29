import 'package:invoiceninja_flutter/constants.dart';
import 'package:invoiceninja_flutter/redux/app/app_actions.dart';
import 'package:invoiceninja_flutter/ui/app/list_scaffold.dart';
import 'package:invoiceninja_flutter/ui/app/list_filter.dart';
import 'package:invoiceninja_flutter/ui/invoice/invoice_presenter.dart';
import 'package:invoiceninja_flutter/utils/localization.dart';
import 'package:invoiceninja_flutter/redux/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:invoiceninja_flutter/data/models/models.dart';
import 'package:invoiceninja_flutter/ui/invoice/invoice_list_vm.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:invoiceninja_flutter/redux/invoice/invoice_actions.dart';
import 'package:invoiceninja_flutter/ui/app/app_bottom_bar.dart';

import 'invoice_screen_vm.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({
    Key key,
    @required this.viewModel,
  }) : super(key: key);

  static const String route = '/invoice';

  final InvoiceScreenVM viewModel;

  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);
    final state = store.state;
    final company = state.company;
    final userCompany = store.state.userCompany;
    final localization = AppLocalization.of(context);

    return ListScaffold(
      entityType: EntityType.invoice,
      onHamburgerLongPress: () => store.dispatch(StartInvoiceMultiselect()),
      appBarTitle: ListFilter(
        entityType: EntityType.invoice,
        entityIds: viewModel.invoiceList,
        filter: state.invoiceListState.filter,
        onFilterChanged: (value) {
          store.dispatch(FilterInvoices(value));
        },
      ),
      body: InvoiceListBuilder(),
      bottomNavigationBar: AppBottomBar(
        entityType: EntityType.invoice,
        tableColumns: InvoicePresenter.getAllTableFields(userCompany),
        defaultTableColumns:
            InvoicePresenter.getDefaultTableFields(userCompany),
        onSelectedSortField: (value) {
          store.dispatch(SortInvoices(value));
        },
        sortFields: [
          InvoiceFields.number,
          InvoiceFields.date,
          InvoiceFields.dueDate,
          EntityFields.updatedAt,
        ],
        onSelectedState: (EntityState state, value) {
          store.dispatch(FilterInvoicesByState(state));
        },
        onSelectedStatus: (EntityStatus status, value) {
          store.dispatch(FilterInvoicesByStatus(status));
        },
        customValues1: company.getCustomFieldValues(CustomFieldType.invoice1,
            excludeBlank: true),
        customValues2: company.getCustomFieldValues(CustomFieldType.invoice2,
            excludeBlank: true),
        customValues3: company.getCustomFieldValues(CustomFieldType.invoice3,
            excludeBlank: true),
        customValues4: company.getCustomFieldValues(CustomFieldType.invoice4,
            excludeBlank: true),
        onSelectedCustom1: (value) =>
            store.dispatch(FilterInvoicesByCustom1(value)),
        onSelectedCustom2: (value) =>
            store.dispatch(FilterInvoicesByCustom2(value)),
        onSelectedCustom3: (value) =>
            store.dispatch(FilterInvoicesByCustom3(value)),
        onSelectedCustom4: (value) =>
            store.dispatch(FilterInvoicesByCustom4(value)),
        statuses: [
          InvoiceStatusEntity().rebuild(
            (b) => b
              ..id = kInvoiceStatusDraft
              ..name = localization.draft,
          ),
          InvoiceStatusEntity().rebuild(
            (b) => b
              ..id = kInvoiceStatusSent
              ..name = localization.sent,
          ),
          InvoiceStatusEntity().rebuild(
            (b) => b
              ..id = kInvoiceStatusPartial
              ..name = localization.partial,
          ),
          InvoiceStatusEntity().rebuild(
            (b) => b
              ..id = kInvoiceStatusPaid
              ..name = localization.paid,
          ),
          InvoiceStatusEntity().rebuild(
            (b) => b
              ..id = kInvoiceStatusPastDue
              ..name = localization.pastDue,
          ),
        ],
        onCheckboxPressed: () {
          if (store.state.invoiceListState.isInMultiselect()) {
            store.dispatch(ClearInvoiceMultiselect());
          } else {
            store.dispatch(StartInvoiceMultiselect());
          }
        },
      ),
      floatingActionButton: state.prefState.isMenuFloated &&
              userCompany.canCreate(EntityType.invoice)
          ? FloatingActionButton(
              heroTag: 'invoice_fab',
              backgroundColor: Theme.of(context).primaryColorDark,
              onPressed: () {
                createEntityByType(
                    context: context, entityType: EntityType.invoice);
              },
              child: Icon(Icons.add, color: Colors.white),
              tooltip: localization.newInvoice,
            )
          : null,
    );
  }
}
