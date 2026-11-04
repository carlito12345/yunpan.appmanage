.class public Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isGrant:Z

.field public name:Ljava/lang/String;

.field public pack:Ljava/lang/String;

.field public packageAndClass:Ljava/lang/String;

.field public str_state:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 10
    iput p3, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->uid:I

    .line 11
    iput-object p4, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->str_state:Ljava/lang/String;

    .line 12
    iput-boolean p5, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->uid:I

    .line 17
    iput-object p4, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->str_state:Ljava/lang/String;

    .line 18
    iput-boolean p5, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 19
    iput-object p6, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->packageAndClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->uid:I

    .line 6
    iput-boolean p4, p0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    return-void
.end method
