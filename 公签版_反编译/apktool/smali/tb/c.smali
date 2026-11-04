.class public final synthetic Ltb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput p3, p0, Ltb/c;->a:I

    iput-object p1, p0, Ltb/c;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    iput-object p2, p0, Ltb/c;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Ltb/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltb/c;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 7
    .line 8
    iget-boolean v0, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->T:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Ltb/c;->c:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Ltb/c;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 20
    .line 21
    iget-boolean v0, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->T:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Ltb/c;->c:Ljava/lang/Runnable;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
