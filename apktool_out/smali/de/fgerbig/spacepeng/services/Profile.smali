.class public Lde/fgerbig/spacepeng/services/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# instance fields
.field private highScore:I

.field private lastPlayedLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lde/fgerbig/spacepeng/services/Profile;->highScore:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lde/fgerbig/spacepeng/services/Profile;->lastPlayedLevel:I

    return-void
.end method


# virtual methods
.method public getHighScore()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lde/fgerbig/spacepeng/services/Profile;->highScore:I

    return v0
.end method

.method public getLastPlayedLevel()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lde/fgerbig/spacepeng/services/Profile;->lastPlayedLevel:I

    return v0
.end method

.method public setHighScore(I)V
    .locals 0
    .param p1, "highScore"    # I

    .prologue
    .line 43
    iput p1, p0, Lde/fgerbig/spacepeng/services/Profile;->highScore:I

    .line 44
    return-void
.end method

.method public setIfNewHighScore(I)Z
    .locals 1
    .param p1, "score"    # I

    .prologue
    .line 50
    iget v0, p0, Lde/fgerbig/spacepeng/services/Profile;->highScore:I

    if-le p1, v0, :cond_0

    .line 51
    iput p1, p0, Lde/fgerbig/spacepeng/services/Profile;->highScore:I

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLastPlayedLevel(I)V
    .locals 0
    .param p1, "lastPlayedLevel"    # I

    .prologue
    .line 68
    iput p1, p0, Lde/fgerbig/spacepeng/services/Profile;->lastPlayedLevel:I

    .line 69
    return-void
.end method
