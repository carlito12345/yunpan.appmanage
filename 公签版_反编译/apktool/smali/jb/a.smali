.class public final Ljb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljb/a;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljb/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljb/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljb/a;->b:Ljb/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ljb/a;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    const-wide/16 v1, 0x5

    .line 13
    .line 14
    invoke-static {v1, v2}, Lif/a;->q0(J)Llb/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
