.class final Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
.super Lfg/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/CallServerInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountingSink"
.end annotation


# instance fields
.field successfulCount:J


# direct methods
.method public constructor <init>(Lfg/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfg/m;-><init>(Lfg/x;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public write(Lfg/i;J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lfg/m;->write(Lfg/i;J)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    .line 5
    .line 6
    add-long/2addr v0, p2

    .line 7
    iput-wide v0, p0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    .line 8
    .line 9
    return-void
.end method
