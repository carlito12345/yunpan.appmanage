.class public Lcom/yunpan/appmanage/bean/StrIntBoolBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public boolValue:Z

.field public intValue:I

.field public strValue:Ljava/lang/String;

.field public value_str2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 11
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 3
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->intValue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->intValue:I

    .line 8
    iput-boolean p3, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 14
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->value_str2:Ljava/lang/String;

    return-void
.end method
