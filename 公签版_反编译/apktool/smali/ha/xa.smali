.class public final synthetic Lha/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/w;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/za;

.field public final synthetic c:Lcom/yunpan/appmanage/bean/PermissionBean;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lha/za;Lcom/yunpan/appmanage/bean/PermissionBean;II)V
    .locals 0

    .line 1
    iput p4, p0, Lha/xa;->a:I

    iput-object p1, p0, Lha/xa;->b:Lha/za;

    iput-object p2, p0, Lha/xa;->c:Lcom/yunpan/appmanage/bean/PermissionBean;

    iput p3, p0, Lha/xa;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget v0, p0, Lha/xa;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/xa;->b:Lha/za;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lha/xa;->c:Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 14
    .line 15
    iget-boolean p2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 16
    .line 17
    xor-int/lit8 v1, p2, 0x1

    .line 18
    .line 19
    iput-boolean v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    const-string p2, "\u5df2\u5141\u8bb8"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p2, "\u5df2\u53d6\u6d88"

    .line 27
    .line 28
    :goto_0
    iput-object p2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, v0, Lha/za;->l:Lx9/x3;

    .line 31
    .line 32
    iget p2, p0, Lha/xa;->d:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p2, 0x0

    .line 39
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 40
    .line 41
    .line 42
    :goto_1
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lha/xa;->b:Lha/za;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_4

    .line 49
    .line 50
    iget-object p1, p0, Lha/xa;->c:Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 51
    .line 52
    iget-boolean p2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 57
    .line 58
    iget-object v5, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 59
    .line 60
    iget-boolean p2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 61
    .line 62
    xor-int/lit8 v6, p2, 0x1

    .line 63
    .line 64
    iget-object v4, v0, Lha/za;->g:Ljava/lang/String;

    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    iput-object p2, v3, La2/w0;->c:Ljava/lang/Object;

    .line 68
    .line 69
    sget-object p2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 70
    .line 71
    new-instance v7, Lfa/t;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    move-object v1, v7

    .line 75
    invoke-direct/range {v1 .. v6}, Lfa/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-boolean p2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 82
    .line 83
    xor-int/lit8 v1, p2, 0x1

    .line 84
    .line 85
    iput-boolean v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 86
    .line 87
    if-nez p2, :cond_3

    .line 88
    .line 89
    const-string p2, "\u5df2\u5141\u8bb8"

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    const-string p2, "\u5df2\u62d2\u7edd"

    .line 93
    .line 94
    :goto_2
    iput-object p2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 95
    .line 96
    iget-object p1, v0, Lha/za;->l:Lx9/x3;

    .line 97
    .line 98
    iget p2, p0, Lha/xa;->d:I

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    const/4 p2, 0x0

    .line 105
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 106
    .line 107
    .line 108
    :goto_3
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
