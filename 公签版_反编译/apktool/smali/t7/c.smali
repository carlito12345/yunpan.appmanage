.class public final Lt7/c;
.super Lt7/a;
.source "SourceFile"


# static fields
.field public static final b:Lt7/c;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt7/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lt7/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt7/c;->b:Lt7/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "CharMatcher.none()"

    .line 2
    .line 3
    invoke-direct {p0}, Lt7/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lt7/c;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt7/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
