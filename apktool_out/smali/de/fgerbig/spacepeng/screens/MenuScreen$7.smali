.class Lde/fgerbig/spacepeng/screens/MenuScreen$7;
.super Ljava/lang/Object;
.source "MenuScreen.java"

# interfaces
.implements Laurelienribon/tweenengine/TweenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/screens/MenuScreen;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/screens/MenuScreen;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/screens/MenuScreen;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lde/fgerbig/spacepeng/screens/MenuScreen$7;->this$0:Lde/fgerbig/spacepeng/screens/MenuScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "source":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v1, Lde/fgerbig/spacepeng/assets/SoundKey;->BOING:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 211
    return-void
.end method
