
$(function(){

	var manageCellar = {
		minYear : 4,
		exprYear : new RegExp("^[12][0-9]{3}$"),

		init:function(){
			this.initAllButtons();
		},

		initAllButtons : function(){
			$('#buttonSubmitNewBottle').click(function(){
				this.sendForm();
			}.bind(this));
			$('.classbuttonDeleteBottle').click(function(event){
				this.removeBottle(event);
			}.bind(this));
		},

		checkYear : function(){
			//Check form values 
			var year = $('#year').val();

			if(year.length < this.minYear){
				$.growl({ 
					title: 'Form verification', 
					message : 'Check the length of the year', 
					type: 'danger', 
					icon : 'icon-bullhorn'
				});
				return false;
			}
			//Year regular expression, between 1000 to 2999
			if(!year.match(this.exprYear)){
				$.growl({
					title: 'Form verification', 
					message : 'Not a valid year', 
					type: 'danger', 
					icon : 'icon-bullhorn'
				});
				return false;
			}
			return true;
		},

		sendForm : function(){
			var form = $('#formAddBottle');

			form.validate();
			if(!form.valid()){
				return false;
			}
			if(!this.checkYear()){
				return false;
			}			
			$('#formAddBottle').submit();
		},

		removeBottle : function(event){
			var id_bottle = 0;
			var aTabClasses = $(event.target).attr("class").split(' ');
			var oRegExp = new RegExp('^buttonDeleteBottle');
			var iLength = aTabClasses.length;

			for (var i = 0; i < iLength; i++) {
				if(aTabClasses[i].match(oRegExp)){
					id_bottle = aTabClasses[i].split('_')[1];
				}
			}
			//Ajax request to delete bottle
			$.ajax({
				url: "/bottle/delete",
			  	type: "POST",
			  	data : { id : id_bottle }
			}).done(function(result){
			    $.growl({ 
			    	title: 'Success',
					message : 'Bottle deleted', 
					type: 'success', 
					icon : 'icon-checkmark'
				});
				setTimeout('window.location.href="/"', 2000)
			}).fail(function(){
				$.growl({
					title: 'Error',
					message : 'Impossible to delete this bottle', 
					type: 'danger', 
					icon : 'icon-bullhorn'
				});
			});

		}

	};

	manageCellar.init();
	
});
