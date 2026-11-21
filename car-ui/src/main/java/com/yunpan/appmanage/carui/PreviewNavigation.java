package com.yunpan.appmanage.carui;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

/** Routes full key presses within a toolbar and its preview panes. */
final class PreviewNavigation extends FrameLayout {
    private final ViewGroup commands;
    private final View history, entries, qr, help;
    private final TextView hint;
    private final CharSequence historyHint;
    private int key, device;
    private long downTime;
    private Runnable releaseAction;

    PreviewNavigation(ViewGroup commands, View history, View entries, View qr, View help) {
        super(commands.getContext());
        this.commands = commands;
        this.history = history;
        this.entries = entries;
        this.qr = qr;
        this.help = help;
        hint = history == null ? null : history.findViewById(ResourceIndex.id("v_history_ts"));
        historyHint = hint == null ? "" : hint.getText();
    }

    @Override public boolean dispatchKeyEvent(KeyEvent event) {
        if (releaseAction != null && event.getKeyCode() == key
                && event.getDownTime() == downTime && event.getDeviceId() == device) {
            if (event.getAction() == KeyEvent.ACTION_UP) {
                Runnable action = releaseAction;
                releaseAction = null;
                if (!event.isCanceled()) action.run();
            }
            return true;
        }
        if (event.getAction() == KeyEvent.ACTION_DOWN && event.getRepeatCount() == 0) {
            Runnable action = action(event.getKeyCode());
            if (action != null) {
                key = event.getKeyCode();
                device = event.getDeviceId();
                downTime = event.getDownTime();
                releaseAction = action;
                return true;
            }
        }
        return super.dispatchKeyEvent(event);
    }

    @Override protected void onDetachedFromWindow() {
        releaseAction = null;
        super.onDetachedFromWindow();
    }

    private Runnable action(int code) {
        View focused = findFocus();
        boolean shown = visible(history);
        if (code == KeyEvent.KEYCODE_BACK) {
            if (shown) return this::closeHistory;
            if (visible(help)) return () -> help.setVisibility(GONE);
            if (visible(qr)) return () -> qr.setVisibility(GONE);
        }
        View item = RemoteFocus.item(commands, focused);
        boolean confirm = code == KeyEvent.KEYCODE_DPAD_CENTER || code == KeyEvent.KEYCODE_ENTER
                || code == KeyEvent.KEYCODE_NUMPAD_ENTER;
        if (confirm || (history != null && code == KeyEvent.KEYCODE_DPAD_DOWN)) {
            if (history != null && isHistoryButton(item)) return () -> {
                if (RemoteFocus.item(commands, findFocus()) == item) enterHistory(item);
            };
            // Help and QR already open on focus. An entry press leaves the preview open.
            CharSequence label = label(item);
            if (("说明".contentEquals(label) && visible(help))
                    || (label.toString().contains("扫码") && visible(qr))) return () -> {};
        }
        if (shown && code == KeyEvent.KEYCODE_DPAD_UP && historyPosition(focused) == 0) {
            return this::focusHistoryButton;
        }
        return null;
    }

    private boolean visible(View pane) { return pane != null && pane.getVisibility() == VISIBLE; }

    private int historyPosition(View focused) {
        View row = RemoteFocus.item(entries, focused);
        if (row == null) return -1;
        try {
            return (Integer) entries.getClass().getMethod("getChildAdapterPosition", View.class).invoke(entries, row);
        } catch (Exception ignored) {
            return -1;
        }
    }

    private boolean isHistoryButton(View button) {
        return "历史".contentEquals(label(button));
    }

    private CharSequence label(View button) {
        if (button == null) return "";
        View name = button.findViewById(ResourceIndex.id("v_name"));
        return name instanceof TextView ? ((TextView) name).getText() : "";
    }

    private void focusHistoryButton() {
        for (int i = 0; i < commands.getChildCount(); i++) {
            View item = commands.getChildAt(i);
            if (isHistoryButton(item) && RemoteFocus.focusable(item) && item.requestFocus()) return;
        }
        RemoteFocus.restore(commands, null);
    }

    private void enterHistory(View trigger) {
        if (qr != null) qr.setVisibility(GONE);
        if (help != null) help.setVisibility(GONE);
        history.setVisibility(VISIBLE);
        boolean empty = LegacyUi.itemCount(entries) == 0;
        if (hint != null) hint.setText(empty ? "暂无下载历史" : historyHint);
        if (empty) return;
        try {
            entries.getClass().getMethod("setSelection", int.class).invoke(entries, 0);
        } catch (Exception ignored) {
            // Native lists without setSelection still expose their first focusable row.
        }
        View first = RemoteFocus.first(entries);
        if (first != null && first.getHeight() > 0 && first.requestFocus()) return;
        // Opening a pane from GONE can bind its first row on the next layout.
        RemoteFocus.afterLayout(entries, () -> {
            if (history.isShown() && RemoteFocus.item(commands, findFocus()) == trigger) {
                RemoteFocus.restore(entries, null);
            }
        });
    }

    private void closeHistory() {
        // The original toolbar previews history when its button receives focus.
        focusHistoryButton();
        history.setVisibility(GONE);
    }
}
