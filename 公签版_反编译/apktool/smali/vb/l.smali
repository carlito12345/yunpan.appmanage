.class public final synthetic Lvb/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lte/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lvb/l;->a:I

    iput-object p2, p0, Lvb/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lvb/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lvb/l;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/j0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/activity/m;->reportFullyDrawn()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lvb/l;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lua/i1;

    .line 18
    .line 19
    iget-object v0, v0, Lua/i1;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->d0()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lie/e;->c:Lie/e;

    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_1
    iget-object v0, p0, Lvb/l;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lua/i1;

    .line 32
    .line 33
    iget-object v0, v0, Lua/i1;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 36
    .line 37
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->z()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lie/e;->c:Lie/e;

    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lvb/l;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lua/i1;

    .line 46
    .line 47
    iget-object v0, v0, Lua/i1;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->v(Z)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lie/e;->c:Lie/e;

    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_3
    iget-object v0, p0, Lvb/l;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lua/i1;

    .line 61
    .line 62
    iget-object v0, v0, Lua/i1;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 65
    .line 66
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->X()V

    .line 67
    .line 68
    .line 69
    sget-object v0, Lie/e;->c:Lie/e;

    .line 70
    .line 71
    return-object v0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
