.class public final synthetic Lha/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

.field public final synthetic c:Lc6/g;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;II)V
    .locals 0

    .line 1
    iput p4, p0, Lha/t3;->a:I

    iput-object p1, p0, Lha/t3;->b:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    iput-object p2, p0, Lha/t3;->c:Lc6/g;

    iput p3, p0, Lha/t3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPermissionResult(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/t3;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "\u65e0\u6cd5\u7533\u8bf7\u6743\u9650\uff0c\u8bf7\u5728\u5feb\u6377\u6743\u9650\u7ba1\u7406\u4e2d\u5f00\u542f"

    .line 13
    .line 14
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    iget-object p2, p0, Lha/t3;->b:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 20
    .line 21
    iput-boolean p1, p2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 22
    .line 23
    iget-object p1, p0, Lha/t3;->c:Lc6/g;

    .line 24
    .line 25
    iget p2, p0, Lha/t3;->d:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :pswitch_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    const-string p1, "\u65e0\u6cd5\u7533\u8bf7\u6743\u9650\uff0c\u8bf7\u5728\u5feb\u6377\u6743\u9650\u7ba1\u7406\u4e2d\u5f00\u542f"

    .line 38
    .line 39
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 p1, 0x1

    .line 44
    iget-object p2, p0, Lha/t3;->b:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 45
    .line 46
    iput-boolean p1, p2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 47
    .line 48
    iget-object p1, p0, Lha/t3;->c:Lc6/g;

    .line 49
    .line 50
    iget p2, p0, Lha/t3;->d:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
