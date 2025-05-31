.class public Lcom/badlogic/gdx/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final MAJOR:I

.field public static final MINOR:I

.field public static final REVISION:I

.field public static final VERSION:Ljava/lang/String; = "1.5.5"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 39
    :try_start_0
    const-string v3, "1.5.5"

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "v":[Ljava/lang/String;
    array-length v3, v1

    if-ge v3, v5, :cond_0

    move v3, v2

    :goto_0
    sput v3, Lcom/badlogic/gdx/Version;->MAJOR:I

    .line 41
    array-length v3, v1

    if-ge v3, v6, :cond_1

    move v3, v2

    :goto_1
    sput v3, Lcom/badlogic/gdx/Version;->MINOR:I

    .line 42
    array-length v3, v1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    :goto_2
    sput v2, Lcom/badlogic/gdx/Version;->REVISION:I

    .line 48
    return-void

    .line 40
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 41
    :cond_1
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 42
    :cond_2
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Invalid version 1.5.5"

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHigher(III)Z
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "revision"    # I

    .prologue
    .line 51
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/Version;->isHigherEqual(III)Z

    move-result v0

    return v0
.end method

.method public static isHigherEqual(III)Z
    .locals 3
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "revision"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    sget v2, Lcom/badlogic/gdx/Version;->MAJOR:I

    if-eq v2, p0, :cond_2

    .line 56
    sget v2, Lcom/badlogic/gdx/Version;->MAJOR:I

    if-le v2, p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget v2, Lcom/badlogic/gdx/Version;->MINOR:I

    if-eq v2, p1, :cond_3

    .line 58
    sget v2, Lcom/badlogic/gdx/Version;->MINOR:I

    if-gt v2, p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 59
    :cond_3
    sget v2, Lcom/badlogic/gdx/Version;->REVISION:I

    if-ge v2, p2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isLower(III)Z
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "revision"    # I

    .prologue
    .line 63
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/Version;->isLowerEqual(III)Z

    move-result v0

    return v0
.end method

.method public static isLowerEqual(III)Z
    .locals 3
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "revision"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    sget v2, Lcom/badlogic/gdx/Version;->MAJOR:I

    if-eq v2, p0, :cond_2

    .line 68
    sget v2, Lcom/badlogic/gdx/Version;->MAJOR:I

    if-ge v2, p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget v2, Lcom/badlogic/gdx/Version;->MINOR:I

    if-eq v2, p1, :cond_3

    .line 70
    sget v2, Lcom/badlogic/gdx/Version;->MINOR:I

    if-lt v2, p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 71
    :cond_3
    sget v2, Lcom/badlogic/gdx/Version;->REVISION:I

    if-le v2, p2, :cond_0

    move v0, v1

    goto :goto_0
.end method
