.class public final Lua/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/f1;->a:I

    iput-object p1, p0, Lua/f1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 2
    .line 3
    iget v1, p0, Lua/f1;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->x(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->B(Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 1

    .line 1
    iget v0, p0, Lua/f1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/f1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
