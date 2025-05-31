.class Lde/fgerbig/spacepeng/screens/TransitionScreen$1;
.super Ljava/lang/Object;
.source "TransitionScreen.java"

# interfaces
.implements Laurelienribon/tweenengine/TweenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/screens/TransitionScreen;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/screens/TransitionScreen;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/screens/TransitionScreen;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen$1;->this$0:Lde/fgerbig/spacepeng/screens/TransitionScreen;

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
    .line 110
    .local p2, "source":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen$1;->this$0:Lde/fgerbig/spacepeng/screens/TransitionScreen;

    iget-object v0, v0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen$1;->this$0:Lde/fgerbig/spacepeng/screens/TransitionScreen;

    invoke-static {v1}, Lde/fgerbig/spacepeng/screens/TransitionScreen;->access$000(Lde/fgerbig/spacepeng/screens/TransitionScreen;)Lcom/badlogic/gdx/Screen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/SpacePeng;->setScreen(Lcom/badlogic/gdx/Screen;)V

    .line 111
    return-void
.end method
