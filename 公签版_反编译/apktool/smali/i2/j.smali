.class public final Li2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lai/a;

.field public static final e:Lai/a;


# instance fields
.field public final a:Lj2/a;

.field public b:Li2/h;

.field public c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lai/a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lai/a;-><init>(IJ)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Li2/j;->d:Lai/a;

    .line 13
    .line 14
    new-instance v0, Lai/a;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lai/a;-><init>(IJ)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Li2/j;->e:Lai/a;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lj2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li2/j;->a:Lj2/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li2/j;->b:Li2/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
