.class public final Lha/ya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/PermissionBean;

.field public final synthetic c:I

.field public final synthetic d:Lha/za;


# direct methods
.method public synthetic constructor <init>(Lha/za;Lcom/yunpan/appmanage/bean/PermissionBean;II)V
    .locals 0

    .line 1
    iput p4, p0, Lha/ya;->a:I

    iput-object p1, p0, Lha/ya;->d:Lha/za;

    iput-object p2, p0, Lha/ya;->b:Lcom/yunpan/appmanage/bean/PermissionBean;

    iput p3, p0, Lha/ya;->c:I

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
    .locals 8

    .line 1
    iget v0, p0, Lha/ya;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 7
    .line 8
    iget-object v0, p0, Lha/ya;->d:Lha/za;

    .line 9
    .line 10
    iget-object v4, v0, Lha/za;->g:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lha/ya;->b:Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 13
    .line 14
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 17
    .line 18
    xor-int/lit8 v6, v1, 0x1

    .line 19
    .line 20
    new-instance v1, Lha/v1;

    .line 21
    .line 22
    iget v2, p0, Lha/ya;->c:I

    .line 23
    .line 24
    const/4 v7, 0x3

    .line 25
    invoke-direct {v1, p0, v0, v2, v7}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v3, La2/w0;->c:Ljava/lang/Object;

    .line 29
    .line 30
    sget-object v0, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    new-instance v7, Lfa/t;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    move-object v1, v7

    .line 36
    invoke-direct/range {v1 .. v6}, Lfa/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 44
    .line 45
    iget-object v1, p0, Lha/ya;->d:Lha/za;

    .line 46
    .line 47
    iget-object v1, v1, Lha/za;->g:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p0, Lha/ya;->b:Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 50
    .line 51
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 52
    .line 53
    iget-boolean v4, v2, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 54
    .line 55
    xor-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    new-instance v5, Lha/v1;

    .line 58
    .line 59
    iget v6, p0, Lha/ya;->c:I

    .line 60
    .line 61
    const/4 v7, 0x2

    .line 62
    invoke-direct {v5, p0, v2, v6, v7}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    iput-object v5, v0, La2/w0;->c:Ljava/lang/Object;

    .line 66
    .line 67
    sget-object v2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 68
    .line 69
    new-instance v5, Lfa/t;

    .line 70
    .line 71
    invoke-direct {v5, v0, v3, v4, v1}, Lfa/t;-><init>(La2/w0;Ljava/lang/String;ZLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 1

    .line 1
    iget v0, p0, Lha/ya;->a:I

    return-void
.end method
