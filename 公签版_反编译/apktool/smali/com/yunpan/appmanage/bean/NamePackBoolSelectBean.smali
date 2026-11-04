.class public Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isSelected:Z

.field public isSystem:Z

.field public name:Ljava/lang/String;

.field public pack:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->pack:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSystem:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 11
    .line 12
    return-void
.end method
