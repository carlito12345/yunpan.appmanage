.class public final Lha/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lha/j4;


# direct methods
.method public synthetic constructor <init>(Lha/j4;II)V
    .locals 0

    .line 1
    iput p3, p0, Lha/i4;->a:I

    iput-object p1, p0, Lha/i4;->c:Lha/j4;

    iput p2, p0, Lha/i4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final b()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 4

    .line 1
    iget v0, p0, Lha/i4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/i4;->c:Lha/j4;

    .line 7
    .line 8
    iget-object v1, v0, Lha/j4;->j:Lua/u0;

    .line 9
    .line 10
    iget-object v2, v0, Lha/j4;->h:Lx9/t0;

    .line 11
    .line 12
    iget v3, p0, Lha/i4;->b:I

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lua/u0;->a(Lcom/yunpan/appmanage/bean/KeyMapSelectBean;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lha/i4;->c:Lha/j4;

    .line 28
    .line 29
    iget-object v1, v0, Lha/j4;->j:Lua/u0;

    .line 30
    .line 31
    iget-object v2, v0, Lha/j4;->h:Lx9/t0;

    .line 32
    .line 33
    iget v3, p0, Lha/i4;->b:I

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lua/u0;->a(Lcom/yunpan/appmanage/bean/KeyMapSelectBean;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 1

    .line 1
    iget v0, p0, Lha/i4;->a:I

    return-void
.end method
