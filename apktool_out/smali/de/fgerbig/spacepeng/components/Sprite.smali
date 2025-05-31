.class public Lde/fgerbig/spacepeng/components/Sprite;
.super Lcom/artemis/Component;
.source "Sprite.java"


# annotations
.annotation build Lcom/artemis/annotations/PooledWeaver;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/fgerbig/spacepeng/components/Sprite$Layer;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

.field public name:Ljava/lang/String;

.field public r:F

.field public rotation:F

.field public scaleX:F

.field public scaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    .line 35
    iput v0, p0, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    .line 36
    iput v0, p0, Lde/fgerbig/spacepeng/components/Sprite;->scaleY:F

    .line 38
    iput v0, p0, Lde/fgerbig/spacepeng/components/Sprite;->r:F

    .line 39
    iput v0, p0, Lde/fgerbig/spacepeng/components/Sprite;->g:F

    .line 40
    iput v0, p0, Lde/fgerbig/spacepeng/components/Sprite;->b:F

    .line 41
    iput v0, p0, Lde/fgerbig/spacepeng/components/Sprite;->a:F

    .line 42
    sget-object v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;->DEFAULT:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iput-object v0, p0, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    return-void
.end method
