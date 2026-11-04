.class public final Lba/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lba/l;->a:Ljava/lang/String;

    .line 7
    iput-wide p2, p0, Lba/l;->b:J

    .line 8
    iput-object p4, p0, Lba/l;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lba/l;->b:J

    .line 3
    iput-object p1, p0, Lba/l;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lba/l;->d:Ljava/lang/String;

    return-void
.end method
