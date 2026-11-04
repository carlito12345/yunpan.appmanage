.class public Lcom/yunpan/appmanage/bean/PermissionBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public canPMS:Z

.field public isOpen:Z

.field public isSelect:Z

.field public ops_is_open:Z

.field public permissionDesc:Ljava/lang/String;

.field public permissionLabel:Ljava/lang/String;

.field public permissionLevel:Ljava/lang/String;

.field public permissionName:Ljava/lang/String;

.field public permissionName_ops:Ljava/lang/String;

.field public permissionType:I

.field public pms_is_open:Z

.field public str1:Ljava/lang/String;

.field public str_status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 8
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    const/4 v2, -0x1

    .line 9
    iput v2, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 10
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 11
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 12
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->isSelect:Z

    .line 14
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 21
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    const/4 v2, -0x1

    .line 22
    iput v2, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 23
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 24
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 25
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->isSelect:Z

    .line 27
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 34
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    const/4 v2, -0x1

    .line 35
    iput v2, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 36
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 37
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 38
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->isSelect:Z

    .line 40
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 47
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    const/4 v2, -0x1

    .line 48
    iput v2, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 49
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 50
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 51
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->isSelect:Z

    .line 53
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    const/4 v2, -0x1

    .line 60
    iput v2, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 61
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 62
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 63
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->isSelect:Z

    .line 65
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    return-void
.end method
