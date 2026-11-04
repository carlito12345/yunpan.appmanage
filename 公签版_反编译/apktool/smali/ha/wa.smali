.class public final synthetic Lha/wa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lha/za;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lha/za;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/wa;->a:Lha/za;

    iput-object p2, p0, Lha/wa;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 4
    .line 5
    iget-object p1, p0, Lha/wa;->a:Lha/za;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "\u5df2\u5141\u8bb8"

    .line 17
    .line 18
    const-string v2, "\u672a\u8bbe\u7f6e"

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean p1, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    .line 23
    .line 24
    iput-boolean p1, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v2

    .line 30
    :goto_0
    iput-object v1, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-boolean v0, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 34
    .line 35
    iput-boolean v0, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    iget-boolean p1, p1, Lha/za;->p:Z

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-boolean p1, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    iget-object p1, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-boolean p1, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    .line 56
    .line 57
    iput-boolean p1, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object v1, v2

    .line 63
    :goto_1
    iput-object v1, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 64
    .line 65
    :cond_3
    :goto_2
    iget-object p1, p0, Lha/wa;->b:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
