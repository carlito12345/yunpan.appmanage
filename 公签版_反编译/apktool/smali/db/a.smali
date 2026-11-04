.class public final Ldb/a;
.super Lbi/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    const-string p2, "editor"

    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lbi/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    return-void

    .line 4
    :pswitch_0
    const-string p2, "editor"

    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lbi/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    const-string v0, "editor"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorInfo"

    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lbi/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    return-void
.end method

.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;Ljava/lang/String;)V
    .locals 1

    const-string v0, "editor"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lbi/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    return-void
.end method
