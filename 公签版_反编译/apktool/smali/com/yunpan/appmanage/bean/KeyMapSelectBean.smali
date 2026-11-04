.class public Lcom/yunpan/appmanage/bean/KeyMapSelectBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public gn_name:Ljava/lang/String;

.field public gn_type:I

.field public ico:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 8
    iput v0, p0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 9
    iput p1, p0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->ico:I

    .line 10
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 3
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    return-void
.end method
